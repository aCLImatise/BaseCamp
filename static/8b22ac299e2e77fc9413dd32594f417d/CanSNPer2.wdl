version 1.0

task CanSNPer2 {
  input {
    Boolean? db
    String? outdir
    Boolean? save_tree
    Boolean? no_snp_files
    Boolean? summary
    Boolean? ref_dir
    Boolean? workdir
    Boolean? read_input
    Int? min_required_hits
    String? strictness
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
      ~{true="-db" false="" db} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--save_tree" false="" save_tree} \
      ~{true="--no_snpfiles" false="" no_snp_files} \
      ~{true="--summary" false="" summary} \
      ~{true="--refdir" false="" ref_dir} \
      ~{true="--workdir" false="" workdir} \
      ~{true="--read_input" false="" read_input} \
      ~{if defined(min_required_hits) then ("--min_required_hits " +  '"' + min_required_hits + '"') else ""} \
      ~{if defined(strictness) then ("--strictness " +  '"' + strictness + '"') else ""} \
      ~{true="--keep_going" false="" keep_going} \
      ~{true="--rerun" false="" rerun} \
      ~{true="--skip_mauve" false="" skip_mauve} \
      ~{true="--keep_temp" false="" keep_temp} \
      ~{true="--tmpdir" false="" tmpdir} \
      ~{true="--logdir" false="" logdir} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--supress" false="" supress}
  >>>
  parameter_meta {
    db: ", --database      CanSNP database"
    outdir: "Output directory"
    save_tree: "Save tree as PDF using ETE3 (default False)"
    no_snp_files: "Don´t save output files."
    summary: "Output a summary file and tree with all called SNPs not affected by no_snpfiles"
    ref_dir: "Specify reference directory"
    workdir: "Change workdir default (./)"
    read_input: "Select if input is reads not fasta"
    min_required_hits: "Minimum sequential hits to call a SNP!"
    strictness: "Percent of snps in path reqired for calling SNP (default 0.7)"
    keep_going: "If Error occurs, continue with the rest of samples"
    rerun: "Rerun already processed files (else skip if result file exists)"
    skip_mauve: "If xmfa files already exists skip step"
    keep_temp: "keep temporary files"
    tmpdir: "Specify reference directory"
    logdir: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
    query: "File(s) to align (fasta)"
  }
}