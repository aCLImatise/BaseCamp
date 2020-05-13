version 1.0

task DxDownloadAllInputs {
  input {
    String exceptExcept
    Boolean parallelParallel
    Boolean sequentialSequential
  }
  command <<<
    dx-download-all-inputs \
      ~{if defined(exceptExcept) then ("--except " +  '"' + exceptExcept + '"') else ""} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{true="--sequential" false="" sequentialSequential}
  >>>
}