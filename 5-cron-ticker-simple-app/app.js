const cron = require("node-cron");

let times = 0;

cron.schedule('1-59/5 * * * * *', () => {
    times ++;
    console.log("Running a task every 5 second, version 1.0.0", times);
});

console.log("Inicio");