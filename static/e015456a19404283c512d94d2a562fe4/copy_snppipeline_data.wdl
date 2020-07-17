version 1.0

task CopySnppipelineData.py {
  input {
    String which_data
    String dest_directory
  }
  command <<<
    copy_snppipeline_data.py \
      ~{which_data} \
      ~{dest_directory}
  >>>
  parameter_meta {
    which_data: "Which of the supplied data sets to copy.  The choices are: lambdaVirusInputs          : Input reference and fastq files lambdaVirusExpectedResults : Expected results files agonaInputs                : Input reference file agonaExpectedResults       : Expected results files listeriaInputs             : Input reference file listeriaExpectedResults    : Expected results files configurationFile          : File of parameters to customize the SNP pipeline Note: the lambda virus data set is complete with input data and expected results.  The agona and listeria data sets have the reference genome and the expected results, but not the input fastq files, because the files are too large to include with the package."
    dest_directory: "Destination directory into which the SNP pipeline data files will be copied. The data files are copied into the destination directory if the directory already exists.  Otherwise the destination directory is created and the data files are copied there.  (default: current directory)"
  }
}