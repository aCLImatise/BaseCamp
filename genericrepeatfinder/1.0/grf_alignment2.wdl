version 1.0

task GrfAlignment2 {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    grf-alignment2 \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}