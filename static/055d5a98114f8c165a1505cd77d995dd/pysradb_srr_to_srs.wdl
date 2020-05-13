version 1.0

task PysradbSrrToSrs {
  input {
    String dbDb
    Boolean detailedDetailed
    Boolean descDesc
    Boolean expandExpand
    String saveSaveTo
  }
  command <<<
    pysradb srr-to-srs \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--detailed" false="" detailedDetailed} \
      ~{true="--desc" false="" descDesc} \
      ~{true="--expand" false="" expandExpand} \
      ~{if defined(saveSaveTo) then ("--saveto " +  '"' + saveSaveTo + '"') else ""}
  >>>
}