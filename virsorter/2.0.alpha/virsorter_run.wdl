version 1.0

task VirsorterRun {
  input {
    File? working_dir
    File? db_dir
    File? seq_file
    String? include_groups
    Int? jobs
    Float? min_score
    Boolean? hallmark_required_on_short
    Boolean? provirus_off
    Int? max_orf_per_seq
    Int? min_length
    String? tmpdir
    Boolean? verbose
    String? profile
    Boolean? dry_run
    Boolean? use_cond_a_off
    String? all_vertical_line_classify
    String? snake_make_args
  }
  command <<<
    virsorter run \
      ~{all_vertical_line_classify} \
      ~{snake_make_args} \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{if defined(include_groups) then ("--include-groups " +  '"' + include_groups + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{true="--hallmark-required-on-short" false="" hallmark_required_on_short} \
      ~{true="--provirus-off" false="" provirus_off} \
      ~{if defined(max_orf_per_seq) then ("--max-orf-per-seq " +  '"' + max_orf_per_seq + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--use-conda-off" false="" use_cond_a_off}
  >>>
  parameter_meta {
    working_dir: "output directory"
    db_dir: "database directory, default to the --db-dir set during installation"
    seq_file: "sequence file in fa or fq format (could be compressed by gzip or bz2)  [required]"
    include_groups: "classifiers of viral groups to included (comma separated and no space in between)  [default: dsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae]"
    jobs: "max # of jobs allowed in parallel.  [default: 8]"
    min_score: "minimal score to be identified as viral [default: 0.5]"
    hallmark_required_on_short: "require hallmark gene short seqs (length cutoff as \"short\" were set in template- config.yaml file); this can reduce false positives at reasonable cost of sensitivity [default: False]"
    provirus_off: "To turn off extracting provirus after classifying full contig seqs; Togetehr with lower --max-orf-per-seq, can speed up a run significantly  [default: False]"
    max_orf_per_seq: "Max # of orf used for computing taxonomic features; if # of orf in a seq exceeds the max limit, it is sub-sampled to this # to reduce computation; to turn off this, set it to -1; this option must be used together with --provirus-off option  [default: 20]"
    min_length: "minimal seq length required; all seqs shorter than this will be removed  [default: 0]"
    tmpdir: "Directory name for intermediate files"
    verbose: "shows detailed rules output  [default: False]"
    profile: "snakemake profile e.g. for cluster execution."
    dry_run: "Check rules to run and files to produce [default: False]"
    use_cond_a_off: "Stop using the conda envs (vs2.yaml) that come with this package and use what are installed in current system; Only useful when you want to install dependencies on your own with your own prefer versions  [default: False]"
    all_vertical_line_classify: ""
    snake_make_args: ""
  }
}