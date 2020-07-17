version 1.0

task Hera {
  input {
    Boolean? output_directory_default
    Boolean? number_threads_default
    Boolean? compress_level_default
    Boolean? number_bootstraps_default
    Boolean? output_bam_file
    Boolean? genome_fasta_file
    Boolean? output_prefix_default
  }
  command <<<
    hera \
      ~{true="-o" false="" output_directory_default} \
      ~{true="-t" false="" number_threads_default} \
      ~{true="-z" false="" compress_level_default} \
      ~{true="-b" false="" number_bootstraps_default} \
      ~{true="-w" false="" output_bam_file} \
      ~{true="-f" false="" genome_fasta_file} \
      ~{true="-p" false="" output_prefix_default}
  >>>
  parameter_meta {
    output_directory_default: ":      Output directory (default: ./)"
    number_threads_default: ":      Number of threads (default: 1)"
    compress_level_default: ":      Compress level (1 - 9) (default: -1)"
    number_bootstraps_default: ":      Number of bootstraps (default: 0)"
    output_bam_file: ":      Output bam file 0:true, 1: false (default: 0)"
    genome_fasta_file: ":      Genome fasta file (if not define, genome mapping will be ignore"
    output_prefix_default: ":      Output prefix (default: '')"
  }
}