version 1.0

task IgdiscoverDiscover {
  input {
    Int? threads
    String? seed
    Int? consensus_threshold
    String? gene
    String? limit
    Int? atleast_error_rate
    Int? atmost_error_rate
    Int? window_width
    Boolean? no_cluster
    String? cluster_exact
    Int? max_n_bases
    Int? subsample
    Boolean? ignore_j
    Int? exact_copies
    Float? d_evalue
    Int? d_coverage
    Int? clo_no_type_diff
    Directory? table_output
    File? database
    File? read_names
  }
  command <<<
    igdiscover discover \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(consensus_threshold) then ("--consensus-threshold " +  '"' + consensus_threshold + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(atleast_error_rate) then ("--left " +  '"' + atleast_error_rate + '"') else ""} \
      ~{if defined(atmost_error_rate) then ("--right " +  '"' + atmost_error_rate + '"') else ""} \
      ~{if defined(window_width) then ("--window-width " +  '"' + window_width + '"') else ""} \
      ~{if (no_cluster) then "--no-cluster" else ""} \
      ~{if defined(cluster_exact) then ("--cluster-exact " +  '"' + cluster_exact + '"') else ""} \
      ~{if defined(max_n_bases) then ("--max-n-bases " +  '"' + max_n_bases + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if (ignore_j) then "--ignore-J" else ""} \
      ~{if defined(exact_copies) then ("--exact-copies " +  '"' + exact_copies + '"') else ""} \
      ~{if defined(d_evalue) then ("--d-evalue " +  '"' + d_evalue + '"') else ""} \
      ~{if defined(d_coverage) then ("--d-coverage " +  '"' + d_coverage + '"') else ""} \
      ~{if defined(clo_no_type_diff) then ("--clonotype-diff " +  '"' + clo_no_type_diff + '"') else ""} \
      ~{if defined(table_output) then ("--table-output " +  '"' + table_output + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(read_names) then ("--read-names " +  '"' + read_names + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads. Default: no. of available CPUs, but\\nat most 4"
    seed: "Seed value for random numbers for reproducible runs."
    consensus_threshold: "Threshold for consensus computation. Default: 60%"
    gene: "Compute consensus for this gene. Can be given multiple\\ntimes. Default: Compute for all genes."
    limit: "Skip remaining genes as soon as at least N candidates\\nwere generated. Default: No limit"
    atleast_error_rate: "For consensus, include only sequences that have at\\nleast this error rate (in percent). Default: 0"
    atmost_error_rate: "For consensus, include only sequences that have at\\nmost this error rate (in percent). Default: 100"
    window_width: "Compute consensus for all PERCENT-wide windows. Set to\\n0 to disable. Default: 2"
    no_cluster: "Do not run linkage cluster analysis."
    cluster_exact: "Treat N exact occurrences of a sequence as a cluster.\\nDefault: Do not cluster exact occurrences"
    max_n_bases: "Remove rows that have more than MAXN \\\"N\\\" nucleotides.\\nIf >0, an N_bases column is added. Default: 0"
    subsample: "When clustering, use N randomly chosen sequences.\\nDefault: 1000"
    ignore_j: "Include also rows without J assignment or J%SHM>0."
    exact_copies: "When subsampling, first pick rows whose V gene\\nsequenceshave at least N exact copies in the input.\\nDefault: 1"
    d_evalue: "For Ds_exact, require D matches with an E-value of at\\nmost EVALUE. Default: 0.0001"
    d_coverage: "For Ds_exact, require D matches with a minimum D\\ncoverage of COVERAGE (in percent). Default: 70)"
    clo_no_type_diff: "When clustering CDR3s to computer the no. of\\nclonotypes, allow DIFFERENCES between\\n(nucleotide-)sequences. Default: 6"
    table_output: "Output tables for all analyzed genes to DIRECTORY.\\nFiles will be named <GENE>.tab."
    database: "FASTA file with V genes. If provided, differences\\nbetween consensus and database will be computed."
    read_names: "Write names of reads with exact matches used in\\ndiscovering each candidate to FILE\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_table_output = "${in_table_output}"
  }
}