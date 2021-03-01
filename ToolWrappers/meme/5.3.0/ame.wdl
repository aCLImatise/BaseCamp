version 1.0

task Ame {
  input {
    Directory? output_directory_default
    String? oc
    File? control
    Int? km_er
    Int? seed
    Boolean? method
    Boolean? scoring
    Float? hit_lo_fraction
    Int? evalue_report_threshold
    Float? fast_a_threshold
    Int? fix_partition
    Boolean? pos_list
    Boolean? log_f_scores
    Boolean? log_pwm_scores
    Boolean? lin_reg_switch_xy
    File? x_alph
    File? b_file
    Float? motif_pseudo
    String? inc
    String? exc
    Boolean? verbose
    File sequence_file
    File motif_file
  }
  command <<<
    ame \
      ~{sequence_file} \
      ~{motif_file} \
      ~{if defined(output_directory_default) then ("--o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (scoring) then "--scoring" else ""} \
      ~{if defined(hit_lo_fraction) then ("--hit-lo-fraction " +  '"' + hit_lo_fraction + '"') else ""} \
      ~{if defined(evalue_report_threshold) then ("--evalue-report-threshold " +  '"' + evalue_report_threshold + '"') else ""} \
      ~{if defined(fast_a_threshold) then ("--fasta-threshold " +  '"' + fast_a_threshold + '"') else ""} \
      ~{if defined(fix_partition) then ("--fix-partition " +  '"' + fix_partition + '"') else ""} \
      ~{if (pos_list) then "--poslist" else ""} \
      ~{if (log_f_scores) then "--log-fscores" else ""} \
      ~{if (log_pwm_scores) then "--log-pwmscores" else ""} \
      ~{if (lin_reg_switch_xy) then "--linreg-switchxy" else ""} \
      ~{if defined(x_alph) then ("--xalph " +  '"' + x_alph + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(motif_pseudo) then ("--motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if defined(inc) then ("--inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("--exc " +  '"' + exc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    output_directory_default: "output directory; default: ame_out"
    oc: "overwrite output; default: ame_out"
    control: "control sequences in FASTA format or the keyword\\n'--shuffle--' to use shuffled versions of the\\nprimary sequences"
    km_er: "preserve k-mer frequencies when shuffling;\\ndefault: 2"
    seed: "random number seed (integer); default: 1"
    method: "[fisher|3dmhg|4dmhg|ranksum|pearson|spearman]\\nstatistical test; default: fisher"
    scoring: "[avg|max|sum|totalhits]\\nsequence scoring method; default: avg"
    hit_lo_fraction: "fraction of maximum log-odds for a hit;\\ndefault: 0.25"
    evalue_report_threshold: "motif significance reporting threshold;\\ndefault: 10"
    fast_a_threshold: "maximum FASTA score for sequence to be positive\\n(requires --poslist pwm); default: 0.001"
    fix_partition: "number of sequences in positive partition;"
    pos_list: "[fasta|pwm]     partition on affinity (fasta) or motif (pwm)\\nscores; default: fasta"
    log_f_scores: "use log of FASTA scores (pearson) or log of\\nranks (spearman)"
    log_pwm_scores: "use log of log of PWM scores"
    lin_reg_switch_xy: "switch roles of X=FASTA scores and Y=PWM scores"
    x_alph: "motifs will be converted to this custom alphabet"
    b_file: "background model file; default: motif file freqs\\ndefault: unconstrained partition maximization"
    motif_pseudo: "pseudocount for creating PWMs from motifs;\\ndefault: 0.1"
    inc: "name pattern to select as motif; may be\\nrepeated; default: all motifs are used"
    exc: "name pattern to exclude as motif; may be\\nrepeated; default: all motifs are used"
    verbose: "[1|2|3|4|5]     controls program verbosity (5=maximum verbosity);\\ndefault: 2"
    sequence_file: ""
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}