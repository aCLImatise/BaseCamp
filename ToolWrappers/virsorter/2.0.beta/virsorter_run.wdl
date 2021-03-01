version 1.0

task VirsorterRun {
  input {
    Directory? working_dir
    File? db_dir
    File? seq_file
    String? include_groups
    Int? jobs
    Float? min_score
    Boolean? hallmark_required_on_short
    Boolean? provirus_off
    Int? max_orf_per_seq
    Int? min_length
    Directory? tmpdir
    Boolean? verbose
    String? profile
    Boolean? dry_run
    Boolean? use_cond_a_off
    Boolean? rm_tmpdir
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
      ~{if (hallmark_required_on_short) then "--hallmark-required-on-short" else ""} \
      ~{if (provirus_off) then "--provirus-off" else ""} \
      ~{if defined(max_orf_per_seq) then ("--max-orf-per-seq " +  '"' + max_orf_per_seq + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (use_cond_a_off) then "--use-conda-off" else ""} \
      ~{if (rm_tmpdir) then "--rm-tmpdir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    working_dir: "output directory"
    db_dir: "database directory, default to the --db-dir\\nset during installation"
    seq_file: "sequence file in fa or fq format (could be\\ncompressed by gzip or bz2)  [required]"
    include_groups: "classifiers of viral groups to included (comma\\nseparated and no space in between)  [default:\\ndsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae]"
    jobs: "max # of jobs allowed in parallel.  [default:\\n8]"
    min_score: "minimal score to be identified as viral\\n[default: 0.5]"
    hallmark_required_on_short: "require hallmark gene short seqs (length\\ncutoff as \\\"short\\\" were set in template-\\nconfig.yaml file); this can reduce false\\npositives at reasonable cost of sensitivity\\n[default: False]"
    provirus_off: "To turn off extracting provirus after\\nclassifying full contig seqs; Togetehr with\\nlower --max-orf-per-seq, can speed up a run\\nsignificantly  [default: False]"
    max_orf_per_seq: "Max # of orf used for computing taxonomic\\nfeatures; if # of orf in a seq exceeds the max\\nlimit, it is sub-sampled to this # to reduce\\ncomputation; to turn off this, set it to -1;\\nthis option must be used together with\\n--provirus-off option  [default: 20]"
    min_length: "minimal seq length required; all seqs shorter\\nthan this will be removed  [default: 0]"
    tmpdir: "Directory name for intermediate files"
    verbose: "shows detailed rules output  [default: False]"
    profile: "snakemake profile e.g. for cluster execution."
    dry_run: "Check rules to run and files to produce\\n[default: False]"
    use_cond_a_off: "Stop using the conda envs (vs2.yaml) that come\\nwith this package and use what are installed\\nin current system; Only useful when you want\\nto install dependencies on your own with your\\nown prefer versions  [default: False]"
    rm_tmpdir: "Remove intermediate file directory (--tmpdir)\\n[default: False]"
    all_vertical_line_classify: ""
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_working_dir = "${in_working_dir}"
  }
}