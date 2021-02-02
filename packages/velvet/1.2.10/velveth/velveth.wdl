version 1.0

task Velveth {
  input {
    Boolean? interleaved
    Boolean? separate
    Boolean? short_paired
    Boolean? strand_specific
    Boolean? reuse_sequences
    Boolean? reuse_binary
    Boolean? no_hash
    Boolean? create_binary
    Directory directory
    String hash_length
    File filename
  }
  command <<<
    velveth \
      ~{directory} \
      ~{hash_length} \
      ~{filename} \
      ~{if (interleaved) then "-interleaved" else ""} \
      ~{if (separate) then "-separate" else ""} \
      ~{if (short_paired) then "-shortPaired" else ""} \
      ~{if (strand_specific) then "-strand_specific" else ""} \
      ~{if (reuse_sequences) then "-reuse_Sequences" else ""} \
      ~{if (reuse_binary) then "-reuse_binary" else ""} \
      ~{if (no_hash) then "-noHash" else ""} \
      ~{if (create_binary) then "-create_binary" else ""}
  >>>
  parameter_meta {
    interleaved: ": File contains paired reads interleaved in the one file (default)"
    separate: ": Read 2 separate files for paired reads"
    short_paired: "-short2 -shortPaired2\\n-short3 -shortPaired3\\n-short4 -shortPaired4\\n-long   -longPaired\\n-reference"
    strand_specific: ": for strand specific transcriptome sequencing data (default: off)"
    reuse_sequences: ": reuse Sequences file (or link) already in directory (no need to provide original filenames in this case (default: off)"
    reuse_binary: ": reuse binary sequences file (or link) already in directory (no need to provide original filenames in this case (default: off)"
    no_hash: ": simply prepare Sequences file, do not hash reads or prepare Roadmaps file (default: off)"
    create_binary: ": create binary CnyUnifiedSeq file (default: off)"
    directory: ": directory name for output files"
    hash_length: ": EITHER an odd integer (if even, it will be decremented) <= 191 (if above, will be reduced)\\n: OR: m,M,s where m and M are odd integers (if not, they will be decremented) with m < M <= 191 (if above, will be reduced)\\nand s is a step (even number). Velvet will then hash from k=m to k=M with a step of s"
    filename: ": path to sequence file or - for standard input"
  }
  output {
    File out_stdout = stdout()
  }
}