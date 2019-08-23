function printTime() {
  console.log(new Date(Date.now()).toISOString());
  setTimeout(printTime, 1000);
}

printTime();
