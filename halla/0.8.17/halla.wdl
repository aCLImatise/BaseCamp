version 1.0

task Halla {
  input {
    Int? first_file_tabdelimited
    Int? second_file_tabdelimited
    Directory? directory_write_files
    Boolean? _qvalue_overall
    Boolean? fnt
    String? permutation
    String? descending
    Int? iterations
    String? metric
    String? fdr
    String? verbose
    Boolean? diagnostics_plot
    String? discretizing
    String? linkage
    Boolean? generate_one_null_samples
    Boolean? header
    Boolean? format_feature_names
    Int? nproc
    Int? nb_in
    Int? seed
    Float? entropy
    Int? entropy_one
    Int? entropy_two
    String? missing_char
    String? fill_missing
    Boolean? missing_data_category
    Boolean? write_hypothesis_tree
    Boolean? data_transformation_method
  }
  command <<<
    halla \
      ~{if defined(first_file_tabdelimited) then ("-X " +  '"' + first_file_tabdelimited + '"') else ""} \
      ~{if defined(second_file_tabdelimited) then ("-Y " +  '"' + second_file_tabdelimited + '"') else ""} \
      ~{if defined(directory_write_files) then ("--output " +  '"' + directory_write_files + '"') else ""} \
      ~{if (_qvalue_overall) then "-q" else ""} \
      ~{if (fnt) then "--fnt" else ""} \
      ~{if defined(permutation) then ("--permutation " +  '"' + permutation + '"') else ""} \
      ~{if defined(descending) then ("--descending " +  '"' + descending + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (diagnostics_plot) then "--diagnostics-plot" else ""} \
      ~{if defined(discretizing) then ("--discretizing " +  '"' + discretizing + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if (generate_one_null_samples) then "--generate-one-null-samples" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (format_feature_names) then "--format-feature-names" else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(nb_in) then ("--nbin " +  '"' + nb_in + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(entropy) then ("--entropy " +  '"' + entropy + '"') else ""} \
      ~{if defined(entropy_one) then ("--entropy1 " +  '"' + entropy_one + '"') else ""} \
      ~{if defined(entropy_two) then ("--entropy2 " +  '"' + entropy_two + '"') else ""} \
      ~{if defined(missing_char) then ("--missing-char " +  '"' + missing_char + '"') else ""} \
      ~{if defined(fill_missing) then ("--fill-missing " +  '"' + fill_missing + '"') else ""} \
      ~{if (missing_data_category) then "--missing-data-category" else ""} \
      ~{if (write_hypothesis_tree) then "--write-hypothesis-tree" else ""} \
      ~{if (data_transformation_method) then "-t" else ""}
  >>>
  parameter_meta {
    first_file_tabdelimited: "first file: Tab-delimited text input file, one row per feature, one column per measurement\\n[REQUIRED]"
    second_file_tabdelimited: "second file: Tab-delimited text input file, one row per feature, one column per measurement\\n[default = the first file (-X)]"
    directory_write_files: "directory to write output files\\n[REQUIRED]"
    _qvalue_overall: "<.1>, --q-value <.1>\\nq-value for overall significance tests (cut-off for false discovery rate)\\n[default = 0.1]"
    fnt: "<.25>           Estimated False Negative Tolerance in block association\\n[default = 0.25]"
    permutation: "permutation function\\n[default = none for Spearman and Pearson and gpd for other]"
    descending: "descending approach\\n[default = HAllA for hierarchical all-against-all]"
    iterations: "iterations for nonparametric significance testing (permutation test)\\n[default = 1000]"
    metric: "metric to be used for similarity measurement\\n[default = '']"
    fdr: "approach for FDR correction\\n[default = bh]"
    verbose: "additional output is printed"
    diagnostics_plot: "Diagnostics plot for associations"
    discretizing: "approach for discretizing continuous data\\n[default = equal-freq]"
    linkage: "The method to be used in linkage hierarchical clustering."
    generate_one_null_samples: "Use one null distribution for permutation test"
    header: "the input files contain a header line"
    format_feature_names: "Replaces special characters and for OTUs separated  by | uses the known end of a clade"
    nproc: "the number of processing units available\\n[default = 1]"
    nb_in: "the number of bins for discretizing\\n[default = None]"
    seed: "a seed number to make the random permutation reproducible\\n[default = 0,and -1 for random number]"
    entropy: "Minimum entropy threshold to filter features with low information\\n[default = 0.5]"
    entropy_one: "Minimum entropy threshold for the first dataset\\n[default = None]"
    entropy_two: "Minimum entropy threshold for the second dataset\\n[default = None]"
    missing_char: "defines missing characters\\n[default = '']"
    fill_missing: "defines missing strategy to fill missing data.\\nFor categorical data puts all missing data in one new category."
    missing_data_category: "To count the missing data as a category"
    write_hypothesis_tree: "To write levels of hypothesis tree in the file"
    data_transformation_method: "{log,sqrt,arcsin,arcsinh,}, --transform {log,sqrt,arcsin,arcsinh,}\\ndata transformation method\\n[default = '' ]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_write_files = "${in_directory_write_files}"
  }
}