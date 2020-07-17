version 1.0

task Pangolin {
  input {
    String? outdir
    String? outfile
    String? data
    Boolean? dry_run
    Boolean? force
    String? tempdir
    Int? max_am_big
    Int? min_length
    Boolean? pan_guilin
    Boolean? write_tree
    String? threads
    Boolean? include_putative
    Boolean? verbose
    Boolean? lineages_version
    String query
  }
  command <<<
    pangolin \
      ~{query} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--force" false="" force} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(max_am_big) then ("--max-ambig " +  '"' + max_am_big + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{true="--panGUIlin" false="" pan_guilin} \
      ~{true="--write-tree" false="" write_tree} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--include-putative" false="" include_putative} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--lineages-version" false="" lineages_version}
  >>>
  parameter_meta {
    outdir: "Output directory. Default: current working directory"
    outfile: "Optional output file name. Default: lineage_report.csv"
    data: "Data directory minimally containing a fasta alignment and guide tree"
    dry_run: "Go through the motions but don't actually run"
    force: "Overwrite all output"
    tempdir: "Specify where you want the temp stuff to go. Default: $TMPDIR"
    max_am_big: "Maximum proportion of Ns allowed for pangolin to attempt assignment. Default: 0.5"
    min_length: "Minimum query length allowed for pangolin to attempt assignment. Default: 10000"
    pan_guilin: "Run web-app version of pangolin"
    write_tree: "Output a phylogeny for each query sequence placed in the guide tree"
    threads: "Number of threads"
    include_putative: "Include the bleeding edge lineage definitions in assignment"
    verbose: "Print lots of stuff to screen"
    lineages_version: "show lineages's version number and exit"
    query: ""
  }
}