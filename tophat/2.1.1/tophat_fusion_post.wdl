version 1.0

task TophatFusionPost {
  input {
    String bowtie_index
  }
  command <<<
    tophat-fusion-post \
      ~{bowtie_index}
  >>>
  parameter_meta {
    bowtie_index: ""
  }
}