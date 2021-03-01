version 1.0

task Hera {
  input {
    Directory? output_directory_default
    Boolean? number_threads_default
    Boolean? compress_level_default
    Boolean? number_bootstraps_default
    File? output_bam_file
    Boolean? genome_fasta_file
    Boolean? output_prefix_default
  }
  command <<<
    hera \
      ~{if (output_directory_default) then "-o" else ""} \
      ~{if (number_threads_default) then "-t" else ""} \
      ~{if (compress_level_default) then "-z" else ""} \
      ~{if (number_bootstraps_default) then "-b" else ""} \
      ~{if (output_bam_file) then "-w" else ""} \
      ~{if (genome_fasta_file) then "-f" else ""} \
      ~{if (output_prefix_default) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory_default: ":      Output directory (default: ./)"
    number_threads_default: ":      Number of threads (default: 1)"
    compress_level_default: ":      Compress level (1 - 9) (default: -1)"
    number_bootstraps_default: ":      Number of bootstraps (default: 0)"
    output_bam_file: ":      Output bam file 0:true, 1: false (default: 0)"
    genome_fasta_file: ":      Genome fasta file (if not define, genome mapping will be ignore"
    output_prefix_default: ":      Output prefix (default: '')"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_output_bam_file = "${in_output_bam_file}"
  }
}