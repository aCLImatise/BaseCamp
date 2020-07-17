version 1.0

task Velveth {
  input {
    Boolean? strand_specific
    Directory directory
    String hash_length
    File filename
    Directory directory_slash_sequences
  }
  command <<<
    velveth \
      ~{directory} \
      ~{hash_length} \
      ~{filename} \
      ~{directory_slash_sequences} \
      ~{true="-strand_specific" false="" strand_specific}
  >>>
  parameter_meta {
    strand_specific: ": for strand specific transcriptome sequencing data (default: off)"
    directory: ": directory name for output files"
    hash_length: ": odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)"
    filename: ": path to sequence file or - for standard input"
    directory_slash_sequences: "[Both files are picked up by graph, so please leave them there]"
  }
}