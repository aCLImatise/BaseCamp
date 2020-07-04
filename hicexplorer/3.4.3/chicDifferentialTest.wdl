version 1.0

task ChicDifferentialTest {
  input {
    Array[Int] interaction_file
    String? alpha
    Int? interaction_file_folder
    String? output_folder
    String? statistic_test
    Boolean? batch_mode
    String? threads
    String? rejected_filenames_to_file
  }
  command <<<
    chicDifferentialTest \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(statistic_test) then ("--statisticTest " +  '"' + statistic_test + '"') else ""} \
      ~{true="--batchMode" false="" batch_mode} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(rejected_filenames_to_file) then ("--rejectedFileNamesToFile " +  '"' + rejected_filenames_to_file + '"') else ""}
  >>>
  parameter_meta {
    interaction_file: "path to the interaction files which should be used for the differential test."
    alpha: "define a significance level (alpha) for accepting samples"
    interaction_file_folder: "Folder where the interaction files are stored. Applies only for batch mode."
    output_folder: "Output folder of the files."
    statistic_test: "Type of test used: fisher's exact test or chi2 contingency"
    batch_mode: "turn on batch mode. The given file for --interactionFile and or --targetFile contain a list of the to be processed files."
    threads: "Number of threads (uses the python multiprocessing module)"
    rejected_filenames_to_file: "Writes the names of the rejected H0 (therefore containing the differential interactions) to file. Can be used for batch processing mode of chicPlotViewpoint."
  }
}