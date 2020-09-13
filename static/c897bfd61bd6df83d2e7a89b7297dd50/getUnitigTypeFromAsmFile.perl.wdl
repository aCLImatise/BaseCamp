version 1.0

task GetUnitigTypeFromAsmFileperl {
  input {
    String grep
  }
  command <<<
    getUnitigTypeFromAsmFile_perl \
      ~{grep}
  >>>
  parameter_meta {
    grep: ""
  }
  output {
    File out_stdout = stdout()
  }
}