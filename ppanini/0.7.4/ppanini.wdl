version 1.0

task Ppanini {
  input {
    String? input_table
    Directory? output_folder
    String? basename
    Int? uniref_two_go
    String? log_level
    String? abundance_detection_level
    Int? t_shld_abund
    String? t_shld_prev
    String? beta
  }
  command <<<
    ppanini \
      ~{if defined(input_table) then ("--input_table " +  '"' + input_table + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if defined(uniref_two_go) then ("--uniref2go " +  '"' + uniref_two_go + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(abundance_detection_level) then ("--abundance-detection-level " +  '"' + abundance_detection_level + '"') else ""} \
      ~{if defined(t_shld_abund) then ("--tshld-abund " +  '"' + t_shld_abund + '"') else ""} \
      ~{if defined(t_shld_prev) then ("--tshld-prev " +  '"' + t_shld_prev + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""}
  >>>
  parameter_meta {
    input_table: "REQUIRED: Gene abundance table with metadata"
    output_folder: "Folder containing results"
    basename: "BASENAME for all the output files"
    uniref_two_go: "uniref to GO term mapping file"
    log_level: "Choices: [DEBUG, INFO, WARNING, ERROR, CRITICAL]"
    abundance_detection_level: "Detection level of normalized relative abundance"
    t_shld_abund: "[X] Percentile Cutoff for Abundance; Default=75th"
    t_shld_prev: "Percentile cutoff for Prevalence"
    beta: "Beta parameter for weights on percentiles"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}