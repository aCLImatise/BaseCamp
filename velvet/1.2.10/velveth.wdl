version 1.0

task Velveth {
  input {
    Boolean? interleaved
    Boolean? separate
    Boolean? strand_specific
    Boolean? reuse_sequences
    Boolean? reuse_binary
    Boolean? no_hash
    Boolean? create_binary
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
      ~{true="-interleaved" false="" interleaved} \
      ~{true="-separate" false="" separate} \
      ~{true="-strand_specific" false="" strand_specific} \
      ~{true="-reuse_Sequences" false="" reuse_sequences} \
      ~{true="-reuse_binary" false="" reuse_binary} \
      ~{true="-noHash" false="" no_hash} \
      ~{true="-create_binary" false="" create_binary}
  >>>
  parameter_meta {
    interleaved: ": File contains paired reads interleaved in the one file (default)"
    separate: ": Read 2 separate files for paired reads"
    strand_specific: ": for strand specific transcriptome sequencing data (default: off)"
    reuse_sequences: ": reuse Sequences file (or link) already in directory (no need to provide original filenames in this case (default: off)"
    reuse_binary: ": reuse binary sequences file (or link) already in directory (no need to provide original filenames in this case (default: off)"
    no_hash: ": simply prepare Sequences file, do not hash reads or prepare Roadmaps file (default: off)"
    create_binary: ": create binary CnyUnifiedSeq file (default: off)"
    directory: ": directory name for output files"
    hash_length: ": EITHER an odd integer (if even, it will be decremented) <= 191 (if above, will be reduced) : OR: m,M,s where m and M are odd integers (if not, they will be decremented) with m < M <= 191 (if above, will be reduced) and s is a step (even number). Velvet will then hash from k=m to k=M with a step of s"
    filename: ": path to sequence file or - for standard input"
    directory_slash_sequences: "[Both files are picked up by graph, so please leave them there]"
  }
}