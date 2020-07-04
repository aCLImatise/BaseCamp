version 1.0

task GetUnitigTypeFromAsmFile.perl {
  input {
    String grep
    String? option
  }
  command <<<
    getUnitigTypeFromAsmFile.perl \
      ~{grep} \
      ~{option}
  >>>
  parameter_meta {
    grep: ""
    option: ""
  }
}