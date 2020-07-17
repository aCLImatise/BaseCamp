version 1.0

task HalReplaceGenome {
  input {
    String in_file
    String genome_name
  }
  command <<<
    halReplaceGenome \
      ~{in_file} \
      ~{genome_name}
  >>>
  parameter_meta {
    in_file: ""
    genome_name: ""
  }
}