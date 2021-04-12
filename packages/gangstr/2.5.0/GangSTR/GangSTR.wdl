version 1.0

task GangSTR {
  input {
    Boolean? bam
    Boolean? ref
    Boolean? regions
    Boolean? out
    Boolean? targeted
    Boolean? chrom
    Boolean? bam_s_amps
    Boolean? samp_sex
    Boolean? str_info
    Boolean? period
    Boolean? skip_q_score
    Boolean? read_length
    Boolean? coverage
    Boolean? model_gc_coverage
    Boolean? insert_mean
    Boolean? inserts_dev
    Boolean? nonuniform
    Int? min_sample_reads
    Boolean? frr_weight
    Boolean? encl_weight
    Boolean? span_weight
    Float? flank_weight
    Boolean? ploidy
    Boolean? skip_off_target
    Boolean? read_prob_mode
    Boolean? numb_strap
    Int? grid_threshold
    Int? rescue_count
    Int? max_proc_read
    Boolean? min_score
    Boolean? min_match
    Boolean? stutter_up
    Float? stutter_down
    Float? stutter_prob
    File? output_bootstraps
    Boolean? output_read_info
    Boolean? include_ggl
    Boolean? seed
    Boolean? verbose
    Boolean? very
    Boolean? quiet
  }
  command <<<
    GangSTR \
      ~{if (bam) then "--bam" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (targeted) then "--targeted" else ""} \
      ~{if (chrom) then "--chrom" else ""} \
      ~{if (bam_s_amps) then "--bam-samps" else ""} \
      ~{if (samp_sex) then "--samp-sex" else ""} \
      ~{if (str_info) then "--str-info" else ""} \
      ~{if (period) then "--period" else ""} \
      ~{if (skip_q_score) then "--skip-qscore" else ""} \
      ~{if (read_length) then "--readlength" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (model_gc_coverage) then "--model-gc-coverage" else ""} \
      ~{if (insert_mean) then "--insertmean" else ""} \
      ~{if (inserts_dev) then "--insertsdev" else ""} \
      ~{if (nonuniform) then "--nonuniform" else ""} \
      ~{if defined(min_sample_reads) then ("--min-sample-reads " +  '"' + min_sample_reads + '"') else ""} \
      ~{if (frr_weight) then "--frrweight" else ""} \
      ~{if (encl_weight) then "--enclweight" else ""} \
      ~{if (span_weight) then "--spanweight" else ""} \
      ~{if defined(flank_weight) then ("--flankweight " +  '"' + flank_weight + '"') else ""} \
      ~{if (ploidy) then "--ploidy" else ""} \
      ~{if (skip_off_target) then "--skipofftarget" else ""} \
      ~{if (read_prob_mode) then "--read-prob-mode" else ""} \
      ~{if (numb_strap) then "--numbstrap" else ""} \
      ~{if defined(grid_threshold) then ("--grid-threshold " +  '"' + grid_threshold + '"') else ""} \
      ~{if defined(rescue_count) then ("--rescue-count " +  '"' + rescue_count + '"') else ""} \
      ~{if defined(max_proc_read) then ("--max-proc-read " +  '"' + max_proc_read + '"') else ""} \
      ~{if (min_score) then "--minscore" else ""} \
      ~{if (min_match) then "--minmatch" else ""} \
      ~{if (stutter_up) then "--stutterup" else ""} \
      ~{if defined(stutter_down) then ("--stutterdown " +  '"' + stutter_down + '"') else ""} \
      ~{if defined(stutter_prob) then ("--stutterprob " +  '"' + stutter_prob + '"') else ""} \
      ~{if (output_bootstraps) then "--output-bootstraps" else ""} \
      ~{if (output_read_info) then "--output-readinfo" else ""} \
      ~{if (include_ggl) then "--include-ggl" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very) then "--very" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gangstr:2.5.0--h2ab8aec_0"
  }
  parameter_meta {
    bam: "<file.bam,[file2.bam]>    Comma separated list of input BAM files"
    ref: "<genome.fa>       FASTA file for the reference genome"
    regions: "<regions.bed>     BED file containing TR coordinates"
    out: "<outprefix>       Prefix to name output files"
    targeted: "Targeted mode"
    chrom: "Only genotype regions on this chromosome"
    bam_s_amps: "<string>          Comma separated list of sample IDs for --bam"
    samp_sex: "<string>          Comma separated list of sample sex for each sample ID (--bam-samps must be provided)"
    str_info: "<string>          Tab file with additional per-STR info (see docs)"
    period: "<string>          Only genotype loci with periods (motif lengths) in this comma-separated list."
    skip_q_score: "Skip calculation of Q-score"
    read_length: "<int>             Read length. Default: -1"
    coverage: "<float>           Average coverage. must be set for exome/targeted data. Comma separated list to specify for each BAM"
    model_gc_coverage: "Model coverage as a function of GC content. Requires genome-wide data"
    insert_mean: "<float>           Fragment length mean. Comma separated list to specify for each BAM separately."
    inserts_dev: "<float>           Fragment length standard deviation. Comma separated list to specify for each BAM separately."
    nonuniform: "Indicate whether data has non-uniform coverage (i.e., exome)"
    min_sample_reads: "Minimum number of reads per sample."
    frr_weight: "<float>           Weight for FRR reads. Default: 1"
    encl_weight: "<float>           Weight for enclosing reads. Default: 1"
    span_weight: "<float>           Weight for spanning reads. Default: 1"
    flank_weight: "Weight for flanking reads. Default: 1"
    ploidy: "<int>             Indicate whether data is haploid (1) or diploid (2). Default: -1"
    skip_off_target: "Skip off target regions included in the BED file."
    read_prob_mode: "Use only read probability (ignore class probability)"
    numb_strap: "<int>             Number of bootstrap samples. Default: 100"
    grid_threshold: "Use optimization rather than grid search to find MLE if more than this many possible alleles. Default: 10000"
    rescue_count: "Number of regions that GangSTR attempts to rescue mates from (excluding off-target regions) Default: 0"
    max_proc_read: "Maximum number of processed reads per sample before a region is skipped. Default: 3000"
    min_score: "<int>             Minimum alignment score (out of 100). Default: 75"
    min_match: "<int>             Minimum number of matching basepairs on each end of enclosing reads. Default: 5"
    stutter_up: "<float>           Stutter insertion probability. Default: 0.05"
    stutter_down: "Stutter deletion probability. Default: 0.05"
    stutter_prob: "Stutter step size parameter. Default: 0.9"
    output_bootstraps: "Output file with bootstrap samples"
    output_read_info: "Output read class info (for debugging)"
    include_ggl: "Output GGL (special GL field) in VCF"
    seed: "Random number generator initial seed"
    verbose: "Print out useful progress messages"
    very: "Print out more detailed progress messages for debugging"
    quiet: "Don't print anything"
  }
  output {
    File out_stdout = stdout()
    File out_output_bootstraps = "${in_output_bootstraps}"
  }
}