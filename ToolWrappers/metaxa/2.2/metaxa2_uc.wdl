version 1.0

task Metaxa2Uc {
  input {
    String? input_count_table
    File? base_names_output
    String? file_string_describing
    String? number_resampling_rounds
    String? number_entries_sampled
    String? sample_compare_leave
    String? withinsample_variation_cutoff
    String? resampling_model_use
    String? distancedissimilarity_measure_use
    String? binary
    String? filter
    String? summary
    String? table
    String? matrix
    String? resampling_table
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2_uc \
      ~{if defined(input_count_table) then ("-i " +  '"' + input_count_table + '"') else ""} \
      ~{if defined(base_names_output) then ("-o " +  '"' + base_names_output + '"') else ""} \
      ~{if defined(file_string_describing) then ("-g " +  '"' + file_string_describing + '"') else ""} \
      ~{if defined(number_resampling_rounds) then ("-r " +  '"' + number_resampling_rounds + '"') else ""} \
      ~{if defined(number_entries_sampled) then ("-s " +  '"' + number_entries_sampled + '"') else ""} \
      ~{if defined(sample_compare_leave) then ("-c " +  '"' + sample_compare_leave + '"') else ""} \
      ~{if defined(withinsample_variation_cutoff) then ("-w " +  '"' + withinsample_variation_cutoff + '"') else ""} \
      ~{if defined(resampling_model_use) then ("-m " +  '"' + resampling_model_use + '"') else ""} \
      ~{if defined(distancedissimilarity_measure_use) then ("-d " +  '"' + distancedissimilarity_measure_use + '"') else ""} \
      ~{if defined(binary) then ("--binary " +  '"' + binary + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(resampling_table) then ("--resampling_table " +  '"' + resampling_table + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_count_table: ": Input count table (e.g. derived from metaxa2_dc)"
    base_names_output: ": Base for the names of output file(s)"
    file_string_describing: ": A file or string describing the sample group division,\\nor 'auto' if the groups should be guessed from sample names,\\nor 'none' if all samples should be treated individually,\\nor 'all' if all samples should be treated as they come from the same group, default = 'all'"
    number_resampling_rounds: ": Number of resampling rounds for each sample, default = 10000"
    number_entries_sampled: ": Number of entries sampled in each resampling round for each sample, 'min' will set this number to the number of entries in the smallest sample, default = 1000"
    sample_compare_leave: ": Sample to compare to, leave blank to compare to all samples, use 'groups' to compare groups instead of samples, default is blank"
    withinsample_variation_cutoff: ": Within-sample variation cutoff to compare to (proportion of all resampling values included), default = 0.99"
    resampling_model_use: ": Resampling model to use, default = model\\nEmpirical uses the empirical distribution from each sample within the group, which gives large variance (not statistical good-practice)\\nAverage assumes that all samples are drawn directly from the group average, which gives very small variance (unrealistic)\\nModel assumes a model that take sample variation into account when drawing from the group average, which gives very variance (more realistic)"
    distancedissimilarity_measure_use: ": Distance/dissimilarity measure to use when comparing samples and groups, default = bray"
    binary: ": Use presence/absence for distance/dissimilarity rather than taking abundances into account, off (F) by default"
    filter: ": Filter out abundance values below this cutoff, default = 0"
    summary: ": Outputs a readable summary file of the results, on (T) by default"
    table: ": Outputs a tab-separated table of the results, off (F) by default"
    matrix: ": Outputs a results in a matrix format, off (F) by default"
    resampling_table: ": Outputs the resampling table (can be huge), off (F) by default"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out_base_names_output = "${in_base_names_output}"
  }
}