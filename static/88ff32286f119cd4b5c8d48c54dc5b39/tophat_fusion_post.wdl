version 1.0

task TophatFusionPost {
  input {
    String? bowtieBowtieIndex
  }
  command <<<
    tophat-fusion-post \
      ~{bowtieBowtieIndex}
  >>>
}