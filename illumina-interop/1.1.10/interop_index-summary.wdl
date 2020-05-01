version 1.0

task InteropIndexSummary {
  input {
    Boolean csvCsv
  }
  command <<<
    interop_index-summary \
      ~{true="--csv" false="" csvCsv}
  >>>
}