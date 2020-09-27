version 1.0

task Ca2mates {
  input {
    Boolean? asm_file
  }
  command <<<
    ca2mates \
      ~{if (asm_file) then "-a" else ""}
  >>>
  parameter_meta {
    asm_file: ".asm file"
  }
  output {
    File out_stdout = stdout()
  }
}