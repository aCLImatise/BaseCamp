version 1.0

task AugurRefine {
  input {
    String? alignment
    String? tree
    String? metadata
    File? output_tree
    File? output_node_data
    Boolean? time_tree
    Float? coalescent
    Int? gen_per_year
    String? clock_rate
    String? clock_std_dev
    Array[String] root
    Boolean? keep_root
    Boolean? covariance
    Boolean? keep_poly_to_mies
    String? precision
    String? date_format
    Boolean? date_confidence
    String? date_inference
    String? branch_length_inference
    String? clock_filter_iqd
    File? vcf_reference
    Array[String] year_bounds
    String? divergence_units
    Int? seed
  }
  command <<<
    augur refine \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(output_tree) then ("--output-tree " +  '"' + output_tree + '"') else ""} \
      ~{if defined(output_node_data) then ("--output-node-data " +  '"' + output_node_data + '"') else ""} \
      ~{if (time_tree) then "--timetree" else ""} \
      ~{if defined(coalescent) then ("--coalescent " +  '"' + coalescent + '"') else ""} \
      ~{if defined(gen_per_year) then ("--gen-per-year " +  '"' + gen_per_year + '"') else ""} \
      ~{if defined(clock_rate) then ("--clock-rate " +  '"' + clock_rate + '"') else ""} \
      ~{if defined(clock_std_dev) then ("--clock-std-dev " +  '"' + clock_std_dev + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if (keep_root) then "--keep-root" else ""} \
      ~{if (covariance) then "--covariance" else ""} \
      ~{if (keep_poly_to_mies) then "--keep-polytomies" else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(date_format) then ("--date-format " +  '"' + date_format + '"') else ""} \
      ~{if (date_confidence) then "--date-confidence" else ""} \
      ~{if defined(date_inference) then ("--date-inference " +  '"' + date_inference + '"') else ""} \
      ~{if defined(branch_length_inference) then ("--branch-length-inference " +  '"' + branch_length_inference + '"') else ""} \
      ~{if defined(clock_filter_iqd) then ("--clock-filter-iqd " +  '"' + clock_filter_iqd + '"') else ""} \
      ~{if defined(vcf_reference) then ("--vcf-reference " +  '"' + vcf_reference + '"') else ""} \
      ~{if defined(year_bounds) then ("--year-bounds " +  '"' + year_bounds + '"') else ""} \
      ~{if defined(divergence_units) then ("--divergence-units " +  '"' + divergence_units + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment: "alignment in fasta or VCF format (default: None)"
    tree: "prebuilt Newick (default: None)"
    metadata: "tsv/csv table with meta data for sequences (default:\\nNone)"
    output_tree: "file name to write tree to (default: None)"
    output_node_data: "file name to write branch lengths as node data\\n(default: None)"
    time_tree: "produce timetree using treetime (default: False)"
    coalescent: "coalescent time scale in units of inverse clock rate\\n(float), optimize as scalar ('opt'), or skyline\\n('skyline') (default: None)"
    gen_per_year: "number of generations per year, relevant for skyline\\noutput('skyline') (default: 50)"
    clock_rate: "fixed clock rate (default: None)"
    clock_std_dev: "standard deviation of the fixed clock_rate estimate\\n(default: None)"
    root: "rooting mechanism ('best', least-squares', 'min_dev',\\n'oldest') OR node to root by OR two nodes indicating a\\nmonophyletic group to root by. Run treetime -h for\\ndefinitions of rooting methods. (default: best)"
    keep_root: "do not reroot the tree; use it as-is. Overrides\\nanything specified by --root. (default: False)"
    covariance: "Account for covariation when estimating rates and/or\\nrerooting. Use --no-covariance to turn off. (default:\\nTrue)"
    keep_poly_to_mies: "Do not attempt to resolve polytomies (default: False)"
    precision: "precision used by TreeTime to determine the number of\\ngrid points that are used for the evaluation of the\\nbranch length interpolation objects. Values range from\\n0 (rough) to 3 (ultra fine) and default to 'auto'.\\n(default: None)"
    date_format: "date format (default: %Y-%m-%d)"
    date_confidence: "calculate confidence intervals for node dates\\n(default: False)"
    date_inference: "assign internal nodes to their marginally most likely\\ndates, not jointly most likely (default: joint)"
    branch_length_inference: "branch length mode of treetime to use (default: auto)"
    clock_filter_iqd: "clock-filter: remove tips that deviate more than n_iqd\\ninterquartile ranges from the root-to-tip vs time\\nregression (default: None)"
    vcf_reference: "fasta file of the sequence the VCF was mapped to\\n(default: None)"
    year_bounds: "specify min or max & min prediction bounds for samples\\nwith XX in year (default: None)"
    divergence_units: "Units in which sequence divergences is exported.\\n(default: mutations-per-site)"
    seed: "seed for random number generation (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}