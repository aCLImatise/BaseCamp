version 1.0

task PysradbGseToSrp {
  input {
    String dbDb
    String saveSaveTo
    Boolean detailedDetailed
    Boolean descDesc
    Boolean expandExpand
  }
  command <<<
    pysradb gse-to-srp \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(saveSaveTo) then ("--saveto " +  '"' + saveSaveTo + '"') else ""} \
      ~{true="--detailed" false="" detailedDetailed} \
      ~{true="--desc" false="" descDesc} \
      ~{true="--expand" false="" expandExpand}
  >>>
}