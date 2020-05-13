version 1.0

task BohraCheck {
  input {
    String krakenKrakenDb
  }
  command <<<
    bohra check \
      ~{if defined(krakenKrakenDb) then ("--kraken_db " +  '"' + krakenKrakenDb + '"') else ""}
  >>>
}