version 1.0

task AbyssBowtie {
  input {
    String? option
  }
  command <<<
    abyss-bowtie \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}