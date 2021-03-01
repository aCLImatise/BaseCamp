version 1.0

task Ame {
  input {
    Directory? output_dir_output_directory
    Boolean? oc
    Boolean? control
    Int? km_er
    Int? seed
    Boolean? method
    Boolean? scoring
    Boolean? hit_lo_fraction
    Int? evalue_report_threshold
    Boolean? fast_a_threshold
    Boolean? fix_partition
    Boolean? pos_list
    Boolean? log_f_scores
    Boolean? log_pwm_scores
    Boolean? lin_reg_switch_xy
    Boolean? x_alph
    Boolean? b_file
    Boolean? motif_pseudo
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
      ~{if (output_dir_output_directory) then "--o" else ""} \
      ~{if (oc) then "--oc" else ""} \
      ~{if (control) then "--control" else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (scoring) then "--scoring" else ""} \
      ~{if (hit_lo_fraction) then "--hit-lo-fraction" else ""} \
      ~{if defined(evalue_report_threshold) then ("--evalue-report-threshold " +  '"' + evalue_report_threshold + '"') else ""} \
      ~{if (fast_a_threshold) then "--fasta-threshold" else ""} \
      ~{if (fix_partition) then "--fix-partition" else ""} \
      ~{if (pos_list) then "--poslist" else ""} \
      ~{if (log_f_scores) then "--log-fscores" else ""} \
      ~{if (log_pwm_scores) then "--log-pwmscores" else ""} \
      ~{if (lin_reg_switch_xy) then "--linreg-switchxy" else ""} \
      ~{if (x_alph) then "--xalph" else ""} \
      ~{if (b_file) then "--bfile" else ""} \
      ~{if (motif_pseudo) then "--motif-pseudo" else ""} \
      ~{if defined(inc) then ("--inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("--exc " +  '"' + exc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir_output_directory: "<output dir> output directory; default=ame_out"
    oc: "<output dir> overwrite output; default=ame_out"
    control: "<control file> control sequences in FASTA format or the keyword\\n'--shuffle--' to use shuffled versions of the primary sequences"
    km_er: "preserve k-mer frequencies when shuffling letters; default: 2"
    seed: "random number seed (integer); default: 1"
    method: "[fisher|3dmhg|4dmhg|ranksum|pearson|spearman]\\nstatistical test; default: fisher"
    scoring: "[avg|max|sum|totalhits] sequence scoring method;\\ndefault: avg"
    hit_lo_fraction: "<fraction> fraction of maximum log-odds for a hit; default: 0.25"
    evalue_report_threshold: "motif significance reporting threshold; default: 10"
    fast_a_threshold: "<ft> maximum FASTA score for sequence to be positive\\n(requires --poslist pwm); default: 0.001"
    fix_partition: "<int> number of sequences in positive partition;"
    pos_list: "[fasta|pwm] partition on affinity (fasta) or motif (pwm) scores;\\ndefault: fasta"
    log_f_scores: "use log of FASTA scores (pearson) or log of ranks (spearman)"
    log_pwm_scores: "use log of log of PWM scores"
    lin_reg_switch_xy: "switch roles of X=FASTA scores and Y=PWM scores"
    x_alph: "<alph file> motifs will be converted to this custom alphabet"
    b_file: "<bfile> background model file; default: motif file freqs\\ndefault: unconstrained partition maximization"
    motif_pseudo: "<pc> pseudocount for creating PWMs from motifs; default: 0.1"
    inc: "name pattern to select as motif; may be\\nrepeated; default: all motifs are used"
    exc: "name pattern to exclude as motif; may be\\nrepeated; default: all motifs are used"
    verbose: "[1|2|3|4|5] controls program verbosity (5=maximum verbosity);\\ndefault: 2"
    sequence_file: ""
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir_output_directory = "${in_output_dir_output_directory}"
  }
}