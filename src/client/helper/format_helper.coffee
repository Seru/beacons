UI.registerHelper "formatDate", (ts, mode) -> switch
  when mode is "day" then moment(ts).format("dddd, DD.MM.YYYY")
  else moment(ts).format("dddd, DD.MM.YYYY")
