version 1.0

task ValidCells {
  input {
    Boolean verboseVerbose
    String? outOutDir
  }
  command <<<
    valid_cells \
      ~{outOutDir} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}