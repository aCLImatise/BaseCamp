version 1.0

task CanSNPer2 {
  input {
    Boolean? database
    Directory? outdir
    Boolean? save_tree
    Boolean? no_snp_files
    File? summary
    Boolean? ref_dir
    Boolean? workdir
    Boolean? read_input
    Int? min_required_hits
    File? strictness
    Boolean? keep_going
    Boolean? rerun
    Boolean? skip_mauve
    Boolean? keep_temp
    Boolean? tmpdir
    Boolean? logdir
    Boolean? verbose
    Boolean? debug
    Boolean? supress
    String query
  }
  command <<<
    CanSNPer2 \
      ~{query} \
      ~{if (database) then "--database" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (save_tree) then "--save_tree" else ""} \
      ~{if (no_snp_files) then "--no_snpfiles" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (ref_dir) then "--refdir" else ""} \
      ~{if (workdir) then "--workdir" else ""} \
      ~{if (read_input) then "--read_input" else ""} \
      ~{if defined(min_required_hits) then ("--min_required_hits " +  '"' + min_required_hits + '"') else ""} \
      ~{if defined(strictness) then ("--strictness " +  '"' + strictness + '"') else ""} \
      ~{if (keep_going) then "--keep_going" else ""} \
      ~{if (rerun) then "--rerun" else ""} \
      ~{if (skip_mauve) then "--skip_mauve" else ""} \
      ~{if (keep_temp) then "--keep_temp" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (logdir) then "--logdir" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (supress) then "--supress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database: "CanSNP database"
    outdir: "Output directory"
    save_tree: "Save tree as PDF using ETE3 (default False)"
    no_snp_files: "Don´t save output files."
    summary: "Output a summary file and tree with all called SNPs\\nnot affected by no_snpfiles"
    ref_dir: "Specify reference directory"
    workdir: "Change workdir default (./)"
    read_input: "Select if input is reads not fasta"
    min_required_hits: "Minimum sequential hits to call a SNP!"
    strictness: "Percent of snps in path reqired for calling SNP\\n(default 0.7)"
    keep_going: "If Error occurs, continue with the rest of samples"
    rerun: "Rerun already processed files (else skip if result\\nfile exists)"
    skip_mauve: "If xmfa files already exists skip step"
    keep_temp: "keep temporary files"
    tmpdir: "Specify reference directory"
    logdir: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
    query: "File(s) to align (fasta)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_summary = "${in_summary}"
  }
}