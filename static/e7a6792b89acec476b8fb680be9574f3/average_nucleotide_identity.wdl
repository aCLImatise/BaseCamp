version 1.0

task AverageNucleotideIdentity.py {
  input {
    String? outdir
    String? in_dir
    Boolean? verbose
    Boolean? force
    String? frag_size
    String? log_file
    Boolean? skip_nuc_mer
    Boolean? skip_blastn
    Boolean? no_clobber
    Boolean? no_compress
    Boolean? graphics
    String? g_format
    String? g_method
    String? labels
    String? classes
    String? method
    String? scheduler
    String? workers
    String? sge_group_size
    String? sge_args
    Boolean? max_match
    String? nuc_mer_exe
    String? filter_exe
    String? blastn_exe
    String? make_blast_db_exe
    String? blast_all_exe
    String? format_db_exe
    Boolean? write_excel
    Boolean? re_render
    String? subsample
    String? seed
    String? job_prefix
  }
  command <<<
    average_nucleotide_identity.py \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--force" false="" force} \
      ~{if defined(frag_size) then ("--fragsize " +  '"' + frag_size + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--skip_nucmer" false="" skip_nuc_mer} \
      ~{true="--skip_blastn" false="" skip_blastn} \
      ~{true="--noclobber" false="" no_clobber} \
      ~{true="--nocompress" false="" no_compress} \
      ~{true="--graphics" false="" graphics} \
      ~{if defined(g_format) then ("--gformat " +  '"' + g_format + '"') else ""} \
      ~{if defined(g_method) then ("--gmethod " +  '"' + g_method + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(classes) then ("--classes " +  '"' + classes + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(workers) then ("--workers " +  '"' + workers + '"') else ""} \
      ~{if defined(sge_group_size) then ("--SGEgroupsize " +  '"' + sge_group_size + '"') else ""} \
      ~{if defined(sge_args) then ("--SGEargs " +  '"' + sge_args + '"') else ""} \
      ~{true="--maxmatch" false="" max_match} \
      ~{if defined(nuc_mer_exe) then ("--nucmer_exe " +  '"' + nuc_mer_exe + '"') else ""} \
      ~{if defined(filter_exe) then ("--filter_exe " +  '"' + filter_exe + '"') else ""} \
      ~{if defined(blastn_exe) then ("--blastn_exe " +  '"' + blastn_exe + '"') else ""} \
      ~{if defined(make_blast_db_exe) then ("--makeblastdb_exe " +  '"' + make_blast_db_exe + '"') else ""} \
      ~{if defined(blast_all_exe) then ("--blastall_exe " +  '"' + blast_all_exe + '"') else ""} \
      ~{if defined(format_db_exe) then ("--formatdb_exe " +  '"' + format_db_exe + '"') else ""} \
      ~{true="--write_excel" false="" write_excel} \
      ~{true="--rerender" false="" re_render} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(job_prefix) then ("--jobprefix " +  '"' + job_prefix + '"') else ""}
  >>>
  parameter_meta {
    outdir: "Output directory (required)"
    in_dir: "Input directory name (required)"
    verbose: "Give verbose output"
    force: "Force file overwriting"
    frag_size: "Sequence fragment size for ANIb (default 1020)"
    log_file: "Logfile location"
    skip_nuc_mer: "Skip NUCmer runs, for testing (e.g. if output already present)"
    skip_blastn: "Skip BLASTN runs, for testing (e.g. if output already present)"
    no_clobber: "Don't nuke existing files"
    no_compress: "Don't compress/delete the comparison output"
    graphics: "Generate heatmap of ANI"
    g_format: "Graphics output format(s) [pdf|png|jpg|svg] (default pdf,png,eps meaning three file formats)"
    g_method: "Graphics output method (default mpl)"
    labels: "Path to file containing sequence labels"
    classes: "Path to file containing sequence classes"
    method: "ANI method (default ANIm)"
    scheduler: "Job scheduler (default multiprocessing, i.e. locally)"
    workers: "Number of worker processes for multiprocessing (default zero, meaning use all available cores)"
    sge_group_size: "Number of jobs to place in an SGE array group (default 10000)"
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
    subsample: "Subsample a percentage [0-1] or specific number (1-n) of input sequences"
    seed: "Set random seed for reproducible subsampling."
    job_prefix: "Prefix for SGE jobs (default ANI)."
  }
}