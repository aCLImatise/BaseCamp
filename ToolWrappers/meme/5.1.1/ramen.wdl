version 1.0

task Ramen {
  input {
    Boolean? log_f_scores
    Boolean? log_pwm_scores
    Boolean? normalise_motifs
    Boolean? lin_reg_switch_xy
    Directory? lin_reg_dump_dir
    Int? repeats
    Float? p_value_cut_off
    Boolean? bg_format
    File? bg_file
    Boolean? motif_format
    Boolean? pseudo_count
    Boolean? verbose
    File sequence_file
    File motif_file
  }
  command <<<
    ramen \
      ~{sequence_file} \
      ~{motif_file} \
      ~{if (log_f_scores) then "--log-fscores" else ""} \
      ~{if (log_pwm_scores) then "--log-pwmscores" else ""} \
      ~{if (normalise_motifs) then "--normalise-motifs" else ""} \
      ~{if (lin_reg_switch_xy) then "--linreg-switchxy" else ""} \
      ~{if defined(lin_reg_dump_dir) then ("--linreg-dumpdir " +  '"' + lin_reg_dump_dir + '"') else ""} \
      ~{if defined(repeats) then ("--repeats " +  '"' + repeats + '"') else ""} \
      ~{if defined(p_value_cut_off) then ("--pvalue-cutoff " +  '"' + p_value_cut_off + '"') else ""} \
      ~{if (bg_format) then "--bgformat" else ""} \
      ~{if defined(bg_file) then ("--bgfile " +  '"' + bg_file + '"') else ""} \
      ~{if (motif_format) then "--motif-format" else ""} \
      ~{if (pseudo_count) then "--pseudocount" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    log_f_scores: "[on|off] Regression on the log_e of the fluorescence scores\\non: (Default) Use the log_e(fluorescence) in the regression.\\noff: Use the score directly provided in the sequence file."
    log_pwm_scores: "[on|off] Regression on the log_e of the PWM scores\\non: Use the log_e(RMA or AMA Score) in the regression.\\noff: (Default) Use the RMA/AMA score directly."
    normalise_motifs: "[on|off] Normalise the motif scores so that the motifs are comparable\\non: (Default) Normalise motifs for comparison (Use RMA score).\\noff: Use raw AMA score (Not recommended)."
    lin_reg_switch_xy: "[on|on] Switch the x and y axis for the linear regression\\non: y-points are PWM scores, x-values are fluorescence scores.\\noff: (Default) y-points are fluorescence scores, x-points are PWM scores."
    lin_reg_dump_dir: "Dump (R-format) TSV files of each regression."
    repeats: "(default=10,000) Number of times to sample for p-value determination."
    p_value_cut_off: "(default=0.05) Only show results with p-value <= this cutoff"
    bg_format: "[0|2|3] source used to determine background frequencies\\n0: uniform background\\n1: MEME motif file\\n2: Background file"
    bg_file: "file containing background frequencies"
    motif_format: "[meme|tamo|regexp] format of input motif file (default meme)"
    pseudo_count: "<float, default = 0.25> Pseudocount for motif affinity scan"
    verbose: "<1...5>                 Integer describing verbosity. Best used as first argument in list."
    sequence_file: ""
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}