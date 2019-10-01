$(document).ready(() => {

    const getList = async (offset) => {
        let list = await $.post('/musics', { offset: offset });
        return list;
    }

    const controlPagination = (page) => {
        if (page < 2) {
            $('#prev').attr('tabindex', -1);
            $('#prev').attr('aria-disabled', "true");
            $('#next').parent().removeClass('disabled');
            $('#prev').parent().addClass('disabled');
            $('#prev').attr("href", 0);
            $('#next').attr("href", 2);
            renderTable(0);
        } else if (page > 1 && page < 6) {
            $('#prev').removeAttr('tabindex');
            $('#prev').removeAttr('aria-disabled');
            $('#next').removeAttr('tabindex');
            $('#next').removeAttr('ria-disabled');

            $('#prev').attr("href", page - 1);
            $('#next').attr("href", page + 1);
            $('#next').parent().removeClass('disabled');
            $('#prev').parent().removeClass('disabled');

            renderTable((page - 1) * 10);
        } else if (page == 6) {
            $('#next').attr('tabindex', -1);
            $('#next').attr('ria-disabled', "true");
            $('#next').attr("href", page + 1);
            $('#next').parent().addClass('disabled');

            $('#prev').attr("href", 5);
            renderTable(50);
        }
    }

    const renderTable = async (offset) => {
        list = await getList(offset);

        let string;
        for (const music of list) {            
            if (music.fUrl) {
                string += `<tr><td><a href="${music.fUrl}" target="_blank">${music.fYear}</a></td><td><a href="${music.fUrl}" target="_blank">${music.fName}</a></td></tr>`;
            }else{
                string += `<tr><td>${music.fYear}</td><td>${music.fName}</td></tr>`;
            }
        }
        $('#body-table-musics').html(string);
    }

    $(document).on('click', '.page-link', function (e) {
        e.preventDefault();
        let page = parseInt($(this).attr('href'));
        controlPagination(page);
    });

    $(document).on('submit', '.form-musics', function (e) {
        e.preventDefault();
        let serialize = $(this).serialize();
        $(this).trigger("reset");

        $.post('/musics/search', serialize).done(function (data) {

            let string;
            if (!data.length) {
                string += `<tr><td colspan="2">Sem resultados para essa busca</td></tr>`;
                $('#body-table-musics').html(string);

                $('#next').attr('tabindex', -1);
                $('#next').attr('ria-disabled', "true");
                $('#next').attr("href", 2);
                $('#next').parent().addClass('disabled');
                $('#prev').attr('tabindex', -1);
                $('#prev').attr('ria-disabled', "true");
                $('#prev').attr("href", 0);
                $('#prev').parent().addClass('disabled');
            } else {
                if (data[0].fMusicID == 1) {
                    for (const music of data) {
                        console.log(music);
                        
                        if (music.fUrl) {
                            string += `<tr><td><a href="${music.fUrl}" target="_blank">${music.fYear}</a></td><td><a href="${music.fUrl}" target="_blank">${music.fName}</a></td></tr>`;
                        }else{
                            string += `<tr><td>${music.fYear}</td><td>${music.fName}</td></tr>`;
                        }
                    }
                    $('#body-table-musics').html(string);

                    $('#prev').attr('tabindex', -1);
                    $('#prev').attr('ria-disabled', "true");
                    $('#prev').parent().addClass('disabled');
                    $('#next').parent().removeClass('disabled');
                    $('#next').removeAttr('tabindex');
                    $('#next').removeAttr('aria-disabled');

                    $('#next').attr("href", 2);
                    $('#prev').attr("href", 0);
                }
                else {
                    for (const music of data) {
                        console.log(music);
                        if (music.fUrl) {
                            string += `<tr><td><a href="${music.fUrl}" target="_blank">${music.fYear}</a></td><td><a href="${music.fUrl}" target="_blank">${music.fName}</a></td></tr>`;
                        }else{
                            string += `<tr><td>${music.fYear}</td><td>${music.fName}</td></tr>`;
                        }
                    }
                    $('#body-table-musics').html(string);
                    $('#next').attr('tabindex', -1);
                    $('#next').attr('ria-disabled', "true");
                    $('#next').attr("href", 2);
                    $('#next').parent().addClass('disabled');
                    $('#prev').attr('tabindex', -1);
                    $('#prev').attr('ria-disabled', "true");
                    $('#prev').attr("href", 0);
                    $('#prev').parent().addClass('disabled');
                }
            }


        });


    });

    $(document).on('click', 'td a', function (e) {
        e.preventDefault();
        let url = $(this).attr('href');
        window.location.href = 'musics/video/'+encodeURIComponent(url);
    });

    $(document).on('submit', '#form-contact', function (e) {
        e.preventDefault();
        alert('Mensagem enviada com sucesso!');
        $(this).trigger("reset");

    });

});