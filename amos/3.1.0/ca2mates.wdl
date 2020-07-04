version 1.0

task Ca2mates {
  input {
    Boolean? asm_file
  }
  command <<<
    ca2mates \
      ~{true="-a" false="" asm_file}
  >>>
  parameter_meta {
    asm_file: ".asm file"
  }
}