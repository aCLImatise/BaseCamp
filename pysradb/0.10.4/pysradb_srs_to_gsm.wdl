version 1.0

task PysradbSrsToGsm {
  input {
    String dbDb
    String saveSaveTo
    Boolean detailedDetailed
    Boolean descDesc
    Boolean expandExpand
  }
  command <<<
    pysradb srs-to-gsm \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(saveSaveTo) then ("--saveto " +  '"' + saveSaveTo + '"') else ""} \
      ~{true="--detailed" false="" detailedDetailed} \
      ~{true="--desc" false="" descDesc} \
      ~{true="--expand" false="" expandExpand}
  >>>
}