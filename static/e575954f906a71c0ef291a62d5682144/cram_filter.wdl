version 1.0

task CramFilter {
  input {
    String in_dot_cram
    String out_dot_cram
  }
  command <<<
    cram_filter \
      ~{in_dot_cram} \
      ~{out_dot_cram}
  >>>
  parameter_meta {
    in_dot_cram: ""
    out_dot_cram: ""
  }
}