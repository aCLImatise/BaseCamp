version 1.0

task PegasusDeAnalysis {
  input {
    String? labels
    String? condition
    String? de_key
    Int? use_threads_threads
    Boolean? calculate_welchs_ttest
    Boolean? fisher
    Directory? temp_folder
    Float? alpha
    Float? n_digits
    Boolean? quiet
    String single_cell_data
    String output_spreadsheet_de
    String de_results_written
    String excel_spreadsheet_containing
  }
  command <<<
    pegasus de_analysis \
      ~{single_cell_data} \
      ~{output_spreadsheet_de} \
      ~{de_results_written} \
      ~{excel_spreadsheet_containing} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(condition) then ("--condition " +  '"' + condition + '"') else ""} \
      ~{if defined(de_key) then ("--de-key " +  '"' + de_key + '"') else ""} \
      ~{if defined(use_threads_threads) then ("-p " +  '"' + use_threads_threads + '"') else ""} \
      ~{if (calculate_welchs_ttest) then "--t" else ""} \
      ~{if (fisher) then "--fisher" else ""} \
      ~{if defined(temp_folder) then ("--temp-folder " +  '"' + temp_folder + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(n_digits) then ("--ndigits " +  '"' + n_digits + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    labels: "Use <attr> as cluster labels."
    condition: "Compute DE between conditions (one vs rest) in each cluster label if specified."
    de_key: "Store DE results into varm with key = <key>. [default: de_res]"
    use_threads_threads: "Use <threads> threads. [default: 1]"
    calculate_welchs_ttest: "Calculate Welch's t-test."
    fisher: "Calculate Fisher's exact test."
    temp_folder: "Joblib temporary folder for memmapping numpy arrays."
    alpha: "Control false discovery rate at <alpha>. [default: 0.05]"
    n_digits: "Round non p-values and q-values to <ndigits> after decimal point in the excel. [default: 3]"
    quiet: "Do not show detailed intermediate outputs."
    single_cell_data: "Single cell data with clustering calculated. DE results would be written back."
    output_spreadsheet_de: "Output spreadsheet with DE results."
    de_results_written: "DE results would be written back to the 'varm' field with name set by --de-key <key>."
    excel_spreadsheet_containing: "An excel spreadsheet containing DE results. Each cluster has two tabs in the spreadsheet. One is for up-regulated genes and the other is for down-regulated genes. If DE was performed on conditions within each cluster. Each cluster will have number of conditions tabs and each condition tab contains two spreadsheet: up for up-regulated genes and down for down-regulated genes."
  }
  output {
    File out_stdout = stdout()
  }
}