version 1.0

task CramSize {
  input {
    File filename_dot_cram
  }
  command <<<
    cram_size \
      ~{filename_dot_cram}
  >>>
  parameter_meta {
    filename_dot_cram: ""
  }
}