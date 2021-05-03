version 1.0

task VirsorterRun {
  input {
    Boolean? hallmark_required_on_short
    Directory? working_dir
    File? db_dir
    File? seq_file
    String? label
    String? include_groups
    Int? jobs
    Float? min_score
    Int? min_length
    Boolean? keep_original_seq
    Boolean? prep_for_dram_v
    Boolean? viral_gene_enrich_off
    Boolean? seqname_suffix_off
    Boolean? provirus_off
    Int? max_orf_per_seq
    Directory? tmpdir
    Boolean? rm_tmpdir
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
      ~{if (hallmark_required_on_short) then "--hallmark-required-on-short" else ""} \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(include_groups) then ("--include-groups " +  '"' + include_groups + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (keep_original_seq) then "--keep-original-seq" else ""} \
      ~{if (prep_for_dram_v) then "--prep-for-dramv" else ""} \
      ~{if (viral_gene_enrich_off) then "--viral-gene-enrich-off" else ""} \
      ~{if (seqname_suffix_off) then "--seqname-suffix-off" else ""} \
      ~{if (provirus_off) then "--provirus-off" else ""} \
      ~{if defined(max_orf_per_seq) then ("--max-orf-per-seq " +  '"' + max_orf_per_seq + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (rm_tmpdir) then "--rm-tmpdir" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (use_cond_a_off) then "--use-conda-off" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/virsorter:2.2.2--pyhdfd78af_0"
  }
  parameter_meta {
    hallmark_required_on_short: "). Most snakemake arguments can be"
    working_dir: "output directory"
    db_dir: "database directory, default to the --db-dir\\nset during installation"
    seq_file: "sequence file in fa or fq format (could be\\ncompressed by gzip or bz2)  [required]"
    label: "add label as prefix to output files; this is\\nuseful when re-running classify with different\\nfiltering options"
    include_groups: "classifiers of viral groups to included (comma\\nseparated and no space in between); available\\noptions are:\\ndsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae\\n[default: dsDNAphage,ssDNA]"
    jobs: "max # of jobs allowed in parallel.  [default:\\n2]"
    min_score: "minimal score to be identified as viral\\n[default: 0.5]"
    min_length: "minimal seq length required; all seqs shorter\\nthan this will be removed  [default: 0]"
    keep_original_seq: "keep the original sequences instead of\\ntrimmed; By default, the untranslated regions\\nat both ends of identified viral seqs are\\ntrimmed; circular sequences are modified to\\nremove overlap between both ends and adjusted\\nfor the gene splitted into two ends;\\n[default: False]"
    prep_for_dram_v: "turn on generating viral seqfile and viral-\\naffi-contigs.tab for DRAMv  [default: False]"
    viral_gene_enrich_off: "turn off the requirement of more viral than\\ncellular genes for calling full sequence\\nviral; this is useful when only using\\nVirSorter2 to produce DRAMv input with viral\\nsequence identified from other tools, or those\\ntrimmed by checkV  [default: False]"
    seqname_suffix_off: "turn off adding suffix (||full, ||{i}_partial,\\n||lt2gene) to sequence names; note that this\\nmight cause partial seqs from the same contig\\nto have the same name; this option is could be\\nused when you are sure there is one partial\\nsequence at max from each contig  [default:\\nFalse]"
    provirus_off: "turn off extracting provirus after classifying\\nfull contigs; Togetehr with lower --max-orf-\\nper-seq, can speed up a run significantly\\n[default: False]"
    max_orf_per_seq: "max # of orf used for computing taxonomic\\nfeature; this option can only be used in\\n--provirus-off mode; if # of orf in a seq\\nexceeds the max limit, it is sub-sampled to\\nthis # to reduce computation  [default: -1]"
    tmpdir: "directory name for intermediate files"
    rm_tmpdir: "remove intermediate file directory (--tmpdir);\\nMore than 100 intermediate files are created\\nfor each run, so this is recommended when 100s\\nof samples are processed to avoid exceeding\\nfile # quota for user  [default: False]"
    verbose: "shows detailed rules output  [default: False]"
    profile: "snakemake profile e.g. for cluster execution."
    dry_run: "Check rules to run and files to produce\\n[default: False]"
    use_cond_a_off: "Stop using the conda envs (vs2.yaml) that come\\nwith this package and use what are installed\\nin current system; Only useful when you want\\nto install dependencies on your own with your\\nown prefer version; this option works with the\\ndevelopment version  [default: False]"
    all_vertical_line_classify: ""
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_working_dir = "${in_working_dir}"
  }
}