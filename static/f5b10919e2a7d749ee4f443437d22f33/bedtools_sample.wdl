version 1.0

task BedtoolsSample {
  input {
    Boolean nN
    Boolean seedSeed
    Boolean ubUbAm
    Boolean sS
    String headerHeader
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
  }
  command <<<
    bedtools sample \
      ~{true="-n" false="" nN} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-ubam" false="" ubUbAm} \
      ~{true="-s" false="" sS} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf}
  >>>
}