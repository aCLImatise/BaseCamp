version 1.0

task Ramen {
  input {
    String? lin_reg_dump_dir
    Int? repeats
    Float? p_value_cut_off
    Boolean? bg_format
    String? bg_file
    Boolean? motif_format
    Boolean? pseudo_count
    Boolean? verbose
    String sequence_file
    String motif_file
  }
  command <<<
    ramen \
      ~{sequence_file} \
      ~{motif_file} \
      ~{if defined(lin_reg_dump_dir) then ("--linreg-dumpdir " +  '"' + lin_reg_dump_dir + '"') else ""} \
      ~{if defined(repeats) then ("--repeats " +  '"' + repeats + '"') else ""} \
      ~{if defined(p_value_cut_off) then ("--pvalue-cutoff " +  '"' + p_value_cut_off + '"') else ""} \
      ~{true="--bgformat" false="" bg_format} \
      ~{if defined(bg_file) then ("--bgfile " +  '"' + bg_file + '"') else ""} \
      ~{true="--motif-format" false="" motif_format} \
      ~{true="--pseudocount" false="" pseudo_count} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    lin_reg_dump_dir: "Dump (R-format) TSV files of each regression."
    repeats: "(default=10,000) Number of times to sample for p-value determination."
    p_value_cut_off: "(default=0.05) Only show results with p-value <= this cutoff"
    bg_format: "[0|2|3] source used to determine background frequencies 0: uniform background 1: MEME motif file 2: Background file"
    bg_file: "file containing background frequencies"
    motif_format: "[meme|tamo|regexp] format of input motif file (default meme)"
    pseudo_count: "<float, default = 0.25> Pseudocount for motif affinity scan"
    verbose: "<1...5>                 Integer describing verbosity. Best used as first argument in list."
    sequence_file: ""
    motif_file: ""
  }
}