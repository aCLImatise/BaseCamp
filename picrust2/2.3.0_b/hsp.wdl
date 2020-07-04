version 1.0

task Hsp.py {
  input {
    File? tree
    File? output_table_predicted
    String? in_trait
    File? observed_trait_table
    String? chunk_size
    String? hsp_method
    Boolean? calculate_nsti
    Boolean? check
    String? processes
    String? seed
    Boolean? verbose
  }
  command <<<
    hsp.py \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(output_table_predicted) then ("--output " +  '"' + output_table_predicted + '"') else ""} \
      ~{if defined(in_trait) then ("--in_trait " +  '"' + in_trait + '"') else ""} \
      ~{if defined(observed_trait_table) then ("--observed_trait_table " +  '"' + observed_trait_table + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(hsp_method) then ("--hsp_method " +  '"' + hsp_method + '"') else ""} \
      ~{true="--calculate_NSTI" false="" calculate_nsti} \
      ~{true="--check" false="" check} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    tree: "The full reference tree in newick format containing both study sequences (i.e. ASVs or OTUs) and reference sequences."
    output_table_predicted: "Output table with predicted abundances per study sequence in input tree. If the extension \".gz\" is added the table will automatically be gzipped."
    in_trait: "Specifies which default trait table should be used. Use the --observed_trait_table option to input a non- default trait table."
    observed_trait_table: "The input trait table describing directly observed traits (e.g. sequenced genomes) in tab-delimited format. Necessary if you want to use a custom table."
    chunk_size: "Number of functions to run at a time on one processor. Note that you should consider how many processes you have specified before changing this option. E.g. if you specify the chunk_size to be the total number of functions, 1 processor will be used even if you specified more so the job will be substantially slower (default: 500)."
    hsp_method: "HSP method to use.\"mp\": predict discrete traits using max parsimony. \"emp_prob\": predict discrete traits based on empirical state probabilities across tips. \"subtree_average\": predict continuous traits using subtree averaging. \"pic\": predict continuous traits with phylogentic independent contrast. \"scp\": reconstruct continuous traits using squared-change parsimony (default: mp)."
    calculate_nsti: "Calculate NSTI and add to output file."
    check: "Check input trait table before HSP."
    processes: "Number of processes to run in parallel (default: 1)."
    seed: "Seed to make output reproducible, which is necessary for the emp_prob method (default: 100)."
    verbose: "If specified, print out wrapped commands and other details to screen."
  }
}