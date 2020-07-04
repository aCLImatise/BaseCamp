version 1.0

task Tophat2gff3 {
  input {
    String description
  }
  command <<<
    tophat2gff3 \
      ~{description}
  >>>
  parameter_meta {
    description: ""
  }
}