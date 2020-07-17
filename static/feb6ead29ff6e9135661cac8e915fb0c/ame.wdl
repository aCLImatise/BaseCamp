version 1.0

task Ame {
  input {
    Boolean? output_dir_output
    Boolean? oc
    Boolean? control
    String? km_er
    String? seed
    Boolean? method
    Boolean? scoring
    Boolean? hit_lo_fraction
    String? evalue_report_threshold
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
    String sequence_file
    String motif_file
  }
  command <<<
    ame \
      ~{sequence_file} \
      ~{motif_file} \
      ~{true="--o" false="" output_dir_output} \
      ~{true="--oc" false="" oc} \
      ~{true="--control" false="" control} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--method" false="" method} \
      ~{true="--scoring" false="" scoring} \
      ~{true="--hit-lo-fraction" false="" hit_lo_fraction} \
      ~{if defined(evalue_report_threshold) then ("--evalue-report-threshold " +  '"' + evalue_report_threshold + '"') else ""} \
      ~{true="--fasta-threshold" false="" fast_a_threshold} \
      ~{true="--fix-partition" false="" fix_partition} \
      ~{true="--poslist" false="" pos_list} \
      ~{true="--log-fscores" false="" log_f_scores} \
      ~{true="--log-pwmscores" false="" log_pwm_scores} \
      ~{true="--linreg-switchxy" false="" lin_reg_switch_xy} \
      ~{true="--xalph" false="" x_alph} \
      ~{true="--bfile" false="" b_file} \
      ~{true="--motif-pseudo" false="" motif_pseudo} \
      ~{if defined(inc) then ("--inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("--exc " +  '"' + exc + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_dir_output: "<output dir> output directory; default=ame_out"
    oc: "<output dir> overwrite output; default=ame_out"
    control: "<control file> control sequences in FASTA format or the keyword '--shuffle--' to use shuffled versions of the primary sequences"
    km_er: "preserve k-mer frequencies when shuffling letters; default: 2"
    seed: "random number seed (integer); default: 1"
    method: "[fisher|3dmhg|4dmhg|ranksum|pearson|spearman] statistical test; default: fisher"
    scoring: "[avg|max|sum|totalhits] sequence scoring method; default: avg"
    hit_lo_fraction: "<fraction> fraction of maximum log-odds for a hit; default: 0.25"
    evalue_report_threshold: "motif significance reporting threshold; default: 10"
    fast_a_threshold: "<ft> maximum FASTA score for sequence to be positive (requires --poslist pwm); default: 0.001"
    fix_partition: "<int> number of sequences in positive partition;"
    pos_list: "[fasta|pwm] partition on affinity (fasta) or motif (pwm) scores; default: fasta"
    log_f_scores: "use log of FASTA scores (pearson) or log of ranks (spearman)"
    log_pwm_scores: "use log of log of PWM scores"
    lin_reg_switch_xy: "switch roles of X=FASTA scores and Y=PWM scores"
    x_alph: "<alph file> motifs will be converted to this custom alphabet"
    b_file: "<bfile> background model file; default: motif file freqs default: unconstrained partition maximization"
    motif_pseudo: "<pc> pseudocount for creating PWMs from motifs; default: 0.1"
    inc: "name pattern to select as motif; may be repeated; default: all motifs are used"
    exc: "name pattern to exclude as motif; may be repeated; default: all motifs are used"
    verbose: "[1|2|3|4|5] controls program verbosity (5=maximum verbosity); default: 2"
    sequence_file: ""
    motif_file: ""
  }
}