version 1.0

task Pangolin {
  input {
    Directory? outdir
    File? outfile
    Directory? data
    Boolean? dry_run
    Boolean? force
    String? tempdir
    Int? max_am_big
    Int? min_length
    Boolean? pan_guilin
    Boolean? write_tree
    Int? threads
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
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(max_am_big) then ("--max-ambig " +  '"' + max_am_big + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (pan_guilin) then "--panGUIlin" else ""} \
      ~{if (write_tree) then "--write-tree" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (include_putative) then "--include-putative" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (lineages_version) then "--lineages-version" else ""}
  >>>
  parameter_meta {
    outdir: "Output directory. Default: current working directory"
    outfile: "Optional output file name. Default: lineage_report.csv"
    data: "Data directory minimally containing a fasta alignment\\nand guide tree"
    dry_run: "Go through the motions but don't actually run"
    force: "Overwrite all output"
    tempdir: "Specify where you want the temp stuff to go. Default:\\n$TMPDIR"
    max_am_big: "Maximum proportion of Ns allowed for pangolin to\\nattempt assignment. Default: 0.5"
    min_length: "Minimum query length allowed for pangolin to attempt\\nassignment. Default: 10000"
    pan_guilin: "Run web-app version of pangolin"
    write_tree: "Output a phylogeny for each query sequence placed in\\nthe guide tree"
    threads: "Number of threads"
    include_putative: "Include the bleeding edge lineage definitions in\\nassignment"
    verbose: "Print lots of stuff to screen"
    lineages_version: "show lineages's version number and exit\\n"
    query: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}