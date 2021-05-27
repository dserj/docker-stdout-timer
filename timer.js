const timeout = process.env.TIMER_TIMEOUT || 1000;

console.log(`Timeout: ${timeout}`);

function printTime() {
  console.log(new Date(Date.now()).toISOString());
  console.log(JSON.stringify({ "jsonDate": new Date(Date.now()).toISOString() }));
  setTimeout(printTime, timeout);
}

printTime();
