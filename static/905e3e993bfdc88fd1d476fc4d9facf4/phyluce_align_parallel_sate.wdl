version 1.0

task PhyluceAlignParallelSate {
  input {
    String? sate_conf
    Directory? input_directory_containing
    Directory? output_directory_hold
    Int? cores
  }
  command <<<
    phyluce_align_parallel_sate \
      ~{if defined(sate_conf) then ("--sate-conf " +  '"' + sate_conf + '"') else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sate_conf: "[--cores CORES]"
    input_directory_containing: "The input directory containing fasta files"
    output_directory_hold: "The output directory to hold alignments"
    cores: "The number of compute cores to use"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}