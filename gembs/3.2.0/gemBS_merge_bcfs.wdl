version 1.0

task GemBSMergeBcfs {
  input {
    String sampleSampleName
    String sampleSampleBarcode
    String threadsThreads
    Boolean removeRemove
    String jobsJobs
    Boolean dryDryRun
    String jsonJson
    Boolean ignoreIgnoreDb
  }
  command <<<
    gemBS merge-bcfs \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(sampleSampleBarcode) then ("--sample-barcode " +  '"' + sampleSampleBarcode + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{true="--ignore-db" false="" ignoreIgnoreDb}
  >>>
}