version 1.0

task PhyluceAlignRandomlySampleAndConcatenate {
  input {
    Directory? alignments
    Directory? output_directory_hold
    Int? sample_size
    Int? replicates
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_randomly_sample_and_concatenate \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(replicates) then ("--replicates " +  '"' + replicates + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing NEXUS alignments to sample\\nand concatenate"
    output_directory_hold: "The output directory to hold concatenated files"
    sample_size: "The number of loci to sample"
    replicates: "The number of replicate samples to take"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}