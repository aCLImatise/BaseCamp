version 1.0

task BiscuitAsm {
  input {
    String input_dot_epi_read
  }
  command <<<
    biscuit asm \
      ~{input_dot_epi_read}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dot_epi_read: ""
  }
  output {
    File out_stdout = stdout()
  }
}