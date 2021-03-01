version 1.0

task AverageNucleotideIdentitypy {
  input {
    Directory? outdir
    Directory? in_dir
    Boolean? verbose
    Boolean? force
    Int? frag_size
    File? log_file
    Boolean? skip_nuc_mer
    Boolean? skip_blastn
    Boolean? no_clobber
    Boolean? no_compress
    Boolean? graphics
    File? g_format
    String? g_method
    File? labels
    File? classes
    String? method
    String? scheduler
    Int? workers
    Int? sge_group_size
    String? sge_args
    Boolean? max_match
    File? nuc_mer_exe
    File? filter_exe
    File? blastn_exe
    File? make_blast_db_exe
    File? blast_all_exe
    File? format_db_exe
    Boolean? write_excel
    Boolean? re_render
    Int? subsample
    String? seed
    String? job_prefix
  }
  command <<<
    average_nucleotide_identity_py \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(frag_size) then ("--fragsize " +  '"' + frag_size + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (skip_nuc_mer) then "--skip_nucmer" else ""} \
      ~{if (skip_blastn) then "--skip_blastn" else ""} \
      ~{if (no_clobber) then "--noclobber" else ""} \
      ~{if (no_compress) then "--nocompress" else ""} \
      ~{if (graphics) then "--graphics" else ""} \
      ~{if defined(g_format) then ("--gformat " +  '"' + g_format + '"') else ""} \
      ~{if defined(g_method) then ("--gmethod " +  '"' + g_method + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(classes) then ("--classes " +  '"' + classes + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(workers) then ("--workers " +  '"' + workers + '"') else ""} \
      ~{if defined(sge_group_size) then ("--SGEgroupsize " +  '"' + sge_group_size + '"') else ""} \
      ~{if defined(sge_args) then ("--SGEargs " +  '"' + sge_args + '"') else ""} \
      ~{if (max_match) then "--maxmatch" else ""} \
      ~{if defined(nuc_mer_exe) then ("--nucmer_exe " +  '"' + nuc_mer_exe + '"') else ""} \
      ~{if defined(filter_exe) then ("--filter_exe " +  '"' + filter_exe + '"') else ""} \
      ~{if defined(blastn_exe) then ("--blastn_exe " +  '"' + blastn_exe + '"') else ""} \
      ~{if defined(make_blast_db_exe) then ("--makeblastdb_exe " +  '"' + make_blast_db_exe + '"') else ""} \
      ~{if defined(blast_all_exe) then ("--blastall_exe " +  '"' + blast_all_exe + '"') else ""} \
      ~{if defined(format_db_exe) then ("--formatdb_exe " +  '"' + format_db_exe + '"') else ""} \
      ~{if (write_excel) then "--write_excel" else ""} \
      ~{if (re_render) then "--rerender" else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(job_prefix) then ("--jobprefix " +  '"' + job_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Output directory (required)"
    in_dir: "Input directory name (required)"
    verbose: "Give verbose output"
    force: "Force file overwriting"
    frag_size: "Sequence fragment size for ANIb (default 1020)"
    log_file: "Logfile location"
    skip_nuc_mer: "Skip NUCmer runs, for testing (e.g. if output already\\npresent)"
    skip_blastn: "Skip BLASTN runs, for testing (e.g. if output already\\npresent)"
    no_clobber: "Don't nuke existing files"
    no_compress: "Don't compress/delete the comparison output"
    graphics: "Generate heatmap of ANI"
    g_format: "Graphics output format(s) [pdf|png|jpg|svg] (default\\npdf,png,eps meaning three file formats)"
    g_method: "Graphics output method (default mpl)"
    labels: "Path to file containing sequence labels"
    classes: "Path to file containing sequence classes"
    method: "ANI method (default ANIm)"
    scheduler: "Job scheduler (default multiprocessing, i.e. locally)"
    workers: "Number of worker processes for multiprocessing\\n(default zero, meaning use all available cores)"
    sge_group_size: "Number of jobs to place in an SGE array group (default\\n10000)"
    sge_args: "Additional arguments for qsub"
    max_match: "Override MUMmer to allow all NUCmer matches"
    nuc_mer_exe: "Path to NUCmer executable"
    filter_exe: "Path to delta-filter executable"
    blastn_exe: "Path to BLASTN+ executable"
    make_blast_db_exe: "Path to BLAST+ makeblastdb executable"
    blast_all_exe: "Path to BLASTALL executable"
    format_db_exe: "Path to BLAST formatdb executable"
    write_excel: "Write Excel format output tables"
    re_render: "Rerender graphics output without recalculation"
    subsample: "Subsample a percentage [0-1] or specific number (1-n)\\nof input sequences"
    seed: "Set random seed for reproducible subsampling."
    job_prefix: "Prefix for SGE jobs (default ANI).\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_g_format = "${in_g_format}"
  }
}