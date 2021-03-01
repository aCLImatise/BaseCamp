version 1.0

task CramSize {
  input {
    File filename_dot_cram
  }
  command <<<
    cram_size \
      ~{filename_dot_cram}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_dot_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}