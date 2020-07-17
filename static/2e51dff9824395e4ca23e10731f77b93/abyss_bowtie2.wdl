version 1.0

task AbyssBowtie2 {
  input {
    String? option
  }
  command <<<
    abyss-bowtie2 \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}