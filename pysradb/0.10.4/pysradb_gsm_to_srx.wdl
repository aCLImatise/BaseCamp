version 1.0

task PysradbGsmToSrx {
  input {
    String dbDb
    Boolean descDesc
    Boolean detailedDetailed
    Boolean expandExpand
    String saveSaveTo
  }
  command <<<
    pysradb gsm-to-srx \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--desc" false="" descDesc} \
      ~{true="--detailed" false="" detailedDetailed} \
      ~{true="--expand" false="" expandExpand} \
      ~{if defined(saveSaveTo) then ("--saveto " +  '"' + saveSaveTo + '"') else ""}
  >>>
}