version 1.0

task NAPSS {
  input {
    Boolean? pseudoknot_free
    Boolean? constraint
    Boolean? dot_percent
    Boolean? maximum
    Boolean? percent
    Boolean? penalty_one
    Boolean? penalty_two
    File? pos_paired
    Boolean? shape
    Boolean? shape_intercept
    Boolean? shape_slope
    Boolean? window
    File seq_file
    File nmr_file
    File ct_file
  }
  command <<<
    NAPSS \
      ~{seq_file} \
      ~{nmr_file} \
      ~{ct_file} \
      ~{if (pseudoknot_free) then "--pseudoknotFree" else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (dot_percent) then "--DotPercent" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (penalty_one) then "--Penalty1" else ""} \
      ~{if (penalty_two) then "--Penalty2" else ""} \
      ~{if (pos_paired) then "--posPaired" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (shape_intercept) then "--SHAPEintercept" else ""} \
      ~{if (shape_slope) then "--SHAPEslope" else ""} \
      ~{if (window) then "--window" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pseudoknot_free: "Specify pseudoknot-free prediction mode.\\nDefault is to predict pseudoknots."
    constraint: "Specify a constraints file to be applied.\\nDefault is to have no constraints applied."
    dot_percent: "Specify a maximum percent energy difference to consider in the dotplot.\\nDefault is 5 percent."
    maximum: "Specify a maximum number of structures per matched constraint set.\\nDefault is 100 structures."
    percent: "Specify a maximum percent energy difference.\\nDefault is 0 which means that all structures are outputted."
    penalty_one: "Specify a pseudoknot penalty P1.\\nDefault is 0.35 kcal/mol."
    penalty_two: "Specify a pseudoknot penalty P2.\\nDefault is 0.65 kcal/mol."
    pos_paired: "Specify the name of the positions paired style output file.\\nDefault is to have no file specified."
    shape: "Specify a SHAPE data file to be used to generate pseudoenergy restraints."
    shape_intercept: "Specify an intercept used with SHAPE constraints.\\nDefault is -0.60 kcal/mol."
    shape_slope: "Specify a slope used with SHAPE constraints.\\nDefault is 1.80 kcal/mol."
    window: "Specify a window size.\\nDefault is 0 nucleotides.\\n"
    seq_file: ""
    nmr_file: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_pos_paired = "${in_pos_paired}"
  }
}