version 1.0

task PhyluceAlignParallelSate {
  input {
    String? sate_conf
    String? input_directory_containing
    String? output_directory_hold
    String? cores
  }
  command <<<
    phyluce_align_parallel_sate \
      ~{if defined(sate_conf) then ("--sate-conf " +  '"' + sate_conf + '"') else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    sate_conf: "[--cores CORES]"
    input_directory_containing: "The input directory containing fasta files"
    output_directory_hold: "The output directory to hold alignments"
    cores: "The number of compute cores to use"
  }
}