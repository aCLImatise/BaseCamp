version 1.0

task ChicAggregateStatistic {
  input {
    Array[File] interaction_file
    Array[File] target_file
    File? out_filename_suffix
    File? interaction_file_folder
    File? target_file_folder
    Directory? output_folder
    File? write_filenames_to_file
  }
  command <<<
    chicAggregateStatistic \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(target_file) then ("--targetFile " +  '"' + target_file + '"') else ""} \
      ~{if defined(out_filename_suffix) then ("--outFileNameSuffix " +  '"' + out_filename_suffix + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(target_file_folder) then ("--targetFileFolder " +  '"' + target_file_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(write_filenames_to_file) then ("--writeFileNamesToFile " +  '"' + write_filenames_to_file + '"') else ""}
  >>>
  parameter_meta {
    interaction_file: "path to the interaction files which should be used for\\naggregation of the statistics."
    target_file: "path to the target files which contains the target\\nregions to prepare data for differential analysis."
    out_filename_suffix: "File name suffix to save the result."
    interaction_file_folder: "Folder where the interaction files are stored. Applies\\nonly for batch mode."
    target_file_folder: "Folder where the target files are stored. Applies only\\nfor batch mode."
    output_folder: "Output folder containing the files."
    write_filenames_to_file: "--batchMode, -bm      turns on batch mode. The files provided by\\n--interactionFile and/or --targetFile contain a list\\nof the files to be processed.\\n--threads THREADS, -t THREADS\\nNumber of threads (uses the python multiprocessing\\nmodule).\\n--help, -h            show this help message and exit\\n--version             show program's version number and exit\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename_suffix = "${in_out_filename_suffix}"
    Directory out_output_folder = "${in_output_folder}"
  }
}