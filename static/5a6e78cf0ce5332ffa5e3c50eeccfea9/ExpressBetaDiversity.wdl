version 1.0

task ExpressBetaDiversity {
  input {
    Boolean? list_calc
    Boolean? unit_tests
    Boolean? tree_file
    String? seq_count_file
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
    Boolean? output_file
    Boolean? verbose
  }
  command <<<
    ExpressBetaDiversity \
      ~{true="--list-calc" false="" list_calc} \
      ~{true="--unit-tests" false="" unit_tests} \
      ~{true="--tree-file" false="" tree_file} \
      ~{if defined(seq_count_file) then ("--seq-count-file " +  '"' + seq_count_file + '"') else ""} \
      ~{true="--output-prefix" false="" output_prefix} \
      ~{true="--clustering" false="" clustering} \
      ~{true="--jackknife" false="" jackknife} \
      ~{true="--seqs-to-draw" false="" seqs_to_draw} \
      ~{true="--sample-size" false="" sample_size} \
      ~{true="--calculator" false="" calculator} \
      ~{true="--weighted" false="" weighted} \
      ~{true="--mrca" false="" mrca} \
      ~{true="--strict-mrca" false="" strict_mrca} \
      ~{true="--count" false="" count} \
      ~{true="--max-data-vecs" false="" max_data_vecs} \
      ~{true="--all" false="" all} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--verbose" false="" verbose}
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
}