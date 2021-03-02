version 1.0

task Hsppy {
  input {
    File? tree
    File? output_table_isadded
    String? in_trait
    File? observed_trait_table
    Int? chunk_size
    String? hsp_method
    File? calculate_nsti
    Boolean? check
    Int? processes
    Int? seed
    Boolean? verbose
  }
  command <<<
    hsp_py \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(output_table_isadded) then ("--output " +  '"' + output_table_isadded + '"') else ""} \
      ~{if defined(in_trait) then ("--in_trait " +  '"' + in_trait + '"') else ""} \
      ~{if defined(observed_trait_table) then ("--observed_trait_table " +  '"' + observed_trait_table + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(hsp_method) then ("--hsp_method " +  '"' + hsp_method + '"') else ""} \
      ~{if (calculate_nsti) then "--calculate_NSTI" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: "The full reference tree in newick format containing\\nboth study sequences (i.e. ASVs or OTUs) and reference\\nsequences."
    output_table_isadded: "Output table with predicted abundances per study\\nsequence in input tree. If the extension \\\".gz\\\" is\\nadded the table will automatically be gzipped."
    in_trait: "Specifies which default trait table should be used.\\nUse the --observed_trait_table option to input a non-\\ndefault trait table."
    observed_trait_table: "The input trait table describing directly observed\\ntraits (e.g. sequenced genomes) in tab-delimited\\nformat. Necessary if you want to use a custom table."
    chunk_size: "Number of functions to run at a time on one processor.\\nNote that you should consider how many processes you\\nhave specified before changing this option. E.g. if\\nyou specify the chunk_size to be the total number of\\nfunctions, 1 processor will be used even if you\\nspecified more so the job will be substantially slower\\n(default: 500)."
    hsp_method: "HSP method to use.\\\"mp\\\": predict discrete traits using\\nmax parsimony. \\\"emp_prob\\\": predict discrete traits\\nbased on empirical state probabilities across tips.\\n\\\"subtree_average\\\": predict continuous traits using\\nsubtree averaging. \\\"pic\\\": predict continuous traits\\nwith phylogentic independent contrast. \\\"scp\\\":\\nreconstruct continuous traits using squared-change\\nparsimony (default: mp)."
    calculate_nsti: "Calculate NSTI and add to output file."
    check: "Check input trait table before HSP."
    processes: "Number of processes to run in parallel (default: 1)."
    seed: "Seed to make output reproducible, which is necessary\\nfor the emp_prob method (default: 100)."
    verbose: "If specified, print out wrapped commands and other\\ndetails to screen."
  }
  output {
    File out_stdout = stdout()
    File out_calculate_nsti = "${in_calculate_nsti}"
  }
}