version 1.0

task FilterContigContigfile {
  input {
    String? idId
  }
  command <<<
    filter_contig contigfile \
      ~{idId}
  >>>
}