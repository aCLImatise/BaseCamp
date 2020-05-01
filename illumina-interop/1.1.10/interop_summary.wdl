version 1.0

task InteropSummary {
  input {
    Boolean levelLevel
    Boolean csvCsv
  }
  command <<<
    interop_summary \
      ~{true="--level" false="" levelLevel} \
      ~{true="--csv" false="" csvCsv}
  >>>
}