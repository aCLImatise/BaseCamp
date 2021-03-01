version 1.0

task ChicDifferentialTest {
  input {
    Array[File] interaction_file
    String? alpha
    File? interaction_file_folder
    Directory? output_folder
    String? statistic_test
    Boolean? batch_mode
    Int? threads
    File? rejected_filenames_to_file
  }
  command <<<
    chicDifferentialTest \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(statistic_test) then ("--statisticTest " +  '"' + statistic_test + '"') else ""} \
      ~{if (batch_mode) then "--batchMode" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(rejected_filenames_to_file) then ("--rejectedFileNamesToFile " +  '"' + rejected_filenames_to_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    interaction_file: "path to the interaction files which should be used for\\nthe differential test."
    alpha: "define a significance level (alpha) for accepting\\nsamples"
    interaction_file_folder: "Folder where the interaction files are stored. Applies\\nonly for batch mode (Default: .)."
    output_folder: "Output folder of the files (Default:\\ndifferentialResults)."
    statistic_test: "Type of test used: fisher's exact test or chi2\\ncontingency (Default: fisher)."
    batch_mode: "turn on batch mode. The given file for"
    threads: "Number of threads (uses the python multiprocessing\\nmodule) (Default: 4)."
    rejected_filenames_to_file: "Writes the names of the rejected H0 (therefore\\ncontaining the differential interactions) to file. Can\\nbe used for batch processing mode of\\nchicPlotViewpoint. (Default: rejected_H0.txt)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}