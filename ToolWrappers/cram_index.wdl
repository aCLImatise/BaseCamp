version 1.0

task CramIndex {
  input {
    File filename_dot_cram
    File? filename_dot_cram_dot_cra_i
  }
  command <<<
    cram_index \
      ~{filename_dot_cram} \
      ~{filename_dot_cram_dot_cra_i}
  >>>
  parameter_meta {
    filename_dot_cram: ""
    filename_dot_cram_dot_cra_i: ""
  }
  output {
    File out_stdout = stdout()
  }
}