version 1.0

task CfsanSnpPipelineData {
  input {
    String which_data
    String lambda_virus_inputs
    String ago_na_inputs
    String ago_na_expected_results
    String listeria_inputs
    String listeria_expected_results
    String configuration_file
    String results_dot
    String dest_directory
  }
  command <<<
    cfsan_snp_pipeline data \
      ~{which_data} \
      ~{lambda_virus_inputs} \
      ~{ago_na_inputs} \
      ~{ago_na_expected_results} \
      ~{listeria_inputs} \
      ~{listeria_expected_results} \
      ~{configuration_file} \
      ~{results_dot} \
      ~{dest_directory}
  >>>
  parameter_meta {
    which_data: "Which of the supplied data sets to copy.  The choices are:"
    lambda_virus_inputs: ": Input reference and fastq files"
    ago_na_inputs: ": Input reference file"
    ago_na_expected_results: ": Expected results files"
    listeria_inputs: ": Input reference file"
    listeria_expected_results: ": Expected results files"
    configuration_file: ": File of parameters to customize the\\nSNP pipeline"
    results_dot: "The agona and listeria data sets have the reference genome and"
    dest_directory: "Destination directory into which the SNP pipeline data files will be copied.\\nThe data files are copied into the destination directory if the directory\\nalready exists.  Otherwise the destination directory is created and the\\ndata files are copied there.  (default: current directory)"
  }
  output {
    File out_stdout = stdout()
  }
}