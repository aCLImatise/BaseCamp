version 1.0

task ExpressBetaDiversity {
  input {
    Boolean? list_calc
    Boolean? unit_tests
    Boolean? tree_file
    File? seq_count_file
    Boolean? output_prefix
    Boolean? clustering
    Boolean? jackknife
    Boolean? seqs_to_draw
    Boolean? sample_size
    Boolean? calculator
    Boolean? weighted
    Boolean? mrca
    Boolean? strict_mrca
    Boolean? count
    Boolean? max_data_vecs
    Boolean? all
    Boolean? threshold
    File? output_file
    Boolean? verbose
  }
  command <<<
    ExpressBetaDiversity \
      ~{if (list_calc) then "--list-calc" else ""} \
      ~{if (unit_tests) then "--unit-tests" else ""} \
      ~{if (tree_file) then "--tree-file" else ""} \
      ~{if defined(seq_count_file) then ("--seq-count-file " +  '"' + seq_count_file + '"') else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""} \
      ~{if (clustering) then "--clustering" else ""} \
      ~{if (jackknife) then "--jackknife" else ""} \
      ~{if (seqs_to_draw) then "--seqs-to-draw" else ""} \
      ~{if (sample_size) then "--sample-size" else ""} \
      ~{if (calculator) then "--calculator" else ""} \
      ~{if (weighted) then "--weighted" else ""} \
      ~{if (mrca) then "--mrca" else ""} \
      ~{if (strict_mrca) then "--strict-mrca" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (max_data_vecs) then "--max-data-vecs" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    list_calc: "List all supported calculators."
    unit_tests: "Execute unit tests."
    tree_file: "Tree in Newick format (if phylogenetic beta-diversity is desired)."
    seq_count_file: "count file."
    output_prefix: "Output prefix (default = output)."
    clustering: "Hierarchical clustering method: UPGMA, SingleLinkage, CompleteLinkage, NJ (default = UPGMA)."
    jackknife: "Number of jackknife replicates to perform (default = 0)."
    seqs_to_draw: "Number of sequence to draw for jackknife replicates."
    sample_size: "Print number of sequences in each sample."
    calculator: "Desired calculator (e.g., Bray-Curtis, Canberra)."
    weighted: "Indicates if sequence abundance data should be used."
    mrca: "Apply 'MRCA weightings' to each branch (experimental)."
    strict_mrca: "Restrict calculator to MRCA subtree."
    count: "Use count data as opposed to relative proportions."
    max_data_vecs: "Maximum number of profiles (data vectors) to have in memory at once (default = 1000)."
    all: "Apply all calculators and cluster calculators at the specified threshold."
    threshold: "Correlation threshold for clustering calculators (default = 0.8)."
    output_file: "Output file for cluster of calculators (default = clusters.txt)."
    verbose: "Provide additional information on program execution."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}