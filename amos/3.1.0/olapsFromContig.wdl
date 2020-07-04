version 1.0

task OlapsFromContig {
  input {
    String? option
  }
  command <<<
    olapsFromContig \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}