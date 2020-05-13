version 1.0

task RsemRunEbseq {
  input {
    File ngNgVector
    String? dataDataMatrixFile
    String? conditionsConditions
    String? outputOutputFile
  }
  command <<<
    rsem-run-ebseq \
      ~{dataDataMatrixFile} \
      ~{if defined(ngNgVector) then ("--ngvector " +  '"' + ngNgVector + '"') else ""} \
      ~{conditionsConditions} \
      ~{outputOutputFile}
  >>>
}