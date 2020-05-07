version 1.0

task FilterContigId {
  input {
    String? contigContigFile
    String? idId
  }
  command <<<
    filter_contig id \
      ~{contigContigFile} \
      ~{idId}
  >>>
}