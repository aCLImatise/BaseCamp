version 1.0

task KrakenMpaReport {
  input {
    String dbDb
    Boolean showShowZeros
    Boolean headerHeaderLine
    Boolean intermediateIntermediateRanks
  }
  command <<<
    kraken-mpa-report \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--show-zeros" false="" showShowZeros} \
      ~{true="--header-line" false="" headerHeaderLine} \
      ~{true="--intermediate-ranks" false="" intermediateIntermediateRanks}
  >>>
}