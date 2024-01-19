window.addEventListener('message', (event) => {
    const data = event.data;

    if (data.type === 'all') {
        document.getElementById('money-output').textContent = data.money;
    };

    if (data.type === 'pool') {
        document.getElementById('job-output').textContent = data.job;
    }

    if (data.type === 'black'){
        document.getElementById('schwarz-output').textContent = data.playerblackmoney;
    }

    if (data.type === 'id'){
        document.getElementById('id-output').textContent = data.playerid;
    }


    
    var time = document.getElementById('time');


    var currentTime = new Date();

    time.innerHTML = currentTime.getHours()+ " : "+ currentTime.getMinutes() +" : "+ currentTime.getSeconds();


    if (data.type === 'c2'){
        document.getElementById('c2').textContent = ("width", data.thirst + "%");
    }

});