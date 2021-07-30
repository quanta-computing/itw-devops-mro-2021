#!/usr/bin/env python3
def monitor(interval=4.0, cycles=42):
  def measure():
    time.sleep(random.random())
    return random.randint(123, 456)

  starttime = time.time()
  value=measure()
  i=0
  while (interval >= 1 and i <= cycles):
    now = time.time()
    print("{}:{}".format(datetime.datetime.now(), value))
    endtime = (now - starttime)
    exectime = (cycles + 1) * interval
    if (endtime < exectime):
    print("exec time",exectime)
    i=i+1
#print("start time",starttime)
#print("end time",end_time)

monitor(1,42)
