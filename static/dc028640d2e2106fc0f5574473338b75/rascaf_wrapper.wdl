version 1.0

task RascafWrapper.pl {
  input {
    String? bam_file_can
    String? path_raw_assembly
    String? prefix_output_file
    Int? ms
    Int? ml
    Int? size_kmer_default
  }
  command <<<
    rascaf-wrapper.pl \
      ~{if defined(bam_file_can) then ("-b " +  '"' + bam_file_can + '"') else ""} \
      ~{if defined(path_raw_assembly) then ("-f " +  '"' + path_raw_assembly + '"') else ""} \
      ~{if defined(prefix_output_file) then ("-o " +  '"' + prefix_output_file + '"') else ""} \
      ~{if defined(ms) then ("-ms " +  '"' + ms + '"') else ""} \
      ~{if defined(ml) then ("-ml " +  '"' + ml + '"') else ""} \
      ~{if defined(size_kmer_default) then ("-k " +  '"' + size_kmer_default + '"') else ""}
  >>>
  parameter_meta {
    bam_file_can: ": bam file. Can use comma-separator to specify multiple alignment files[required]"
    path_raw_assembly: ": path to the raw assembly fasta file"
    prefix_output_file: ": prefix of the output file (default: rascaf_scaffold)"
    ms: ": minimum support for connecting two contigs(default: 2)"
    ml: ": minimum exonic length if no intron (default: 200)"
    size_kmer_default: ": the size of a kmer(<=32. default: 21)"
  }
}