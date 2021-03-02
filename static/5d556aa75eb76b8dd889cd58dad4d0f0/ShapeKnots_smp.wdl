version 1.0

task ShapeKnotssmp {
  input {
    Boolean? constraint
    Boolean? dms
    Boolean? d_shape
    Boolean? d_shape_slope
    Boolean? double_offset
    Boolean? i_maximum
    Boolean? i_percent
    Boolean? i_window
    Boolean? maximum
    Boolean? percent
    Boolean? penalty_one
    Boolean? penalty_two
    Boolean? pseudo_knotted_helices
    Boolean? shape
    Boolean? shape_intercept
    Boolean? shape_slope
    Boolean? single_offset
    Boolean? window
    Boolean? warnings
    Boolean? experimental_pair_bonus
    Boolean? xo
    Boolean? xs
    String shape_knots
    File seq_file
    File ct_file
  }
  command <<<
    ShapeKnots_smp \
      ~{shape_knots} \
      ~{seq_file} \
      ~{ct_file} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (dms) then "--DMS" else ""} \
      ~{if (d_shape) then "--DSHAPE" else ""} \
      ~{if (d_shape_slope) then "--DSHAPEslope" else ""} \
      ~{if (double_offset) then "--doubleOffset" else ""} \
      ~{if (i_maximum) then "--IMaximum" else ""} \
      ~{if (i_percent) then "--IPercent" else ""} \
      ~{if (i_window) then "--IWindow" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (penalty_one) then "--Penalty1" else ""} \
      ~{if (penalty_two) then "--Penalty2" else ""} \
      ~{if (pseudo_knotted_helices) then "--PseudoknottedHelices" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (shape_intercept) then "--SHAPEintercept" else ""} \
      ~{if (shape_slope) then "--SHAPEslope" else ""} \
      ~{if (single_offset) then "--singleOffset" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (warnings) then "--warnings" else ""} \
      ~{if (experimental_pair_bonus) then "--experimentalPairBonus" else ""} \
      ~{if (xo) then "-xo" else ""} \
      ~{if (xs) then "-xs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    constraint: "Specify a constraints file to be applied.\\nDefault is to have no constraints applied."
    dms: "Specify a DMS constraints file to be applied. These constraints are\\npseudoenergy constraints.\\nDefault is to have no constraints applied."
    d_shape: "Specify a differential SHAPE restraints file to be applied. These\\nconstraints are pseudoenergy restraints.\\nDefault is to have no restraints applied."
    d_shape_slope: "Specify a slope used with differential SHAPE restraints.\\nDefault is 2.11 kcal/mol."
    double_offset: "Specify a double-stranded offset file, which adds energy bonuses to\\nparticular double-stranded nucleotides.\\nDefault is to have no double-stranded offset specified."
    i_maximum: "Specify a maximum number of internally generated structures for each call\\nof the dynamic programming algorithm. Note that suboptimal structures are\\ngenerated until either the maximum number of structures is reached or the\\nmaximum percent difference is reached (below).\\nThis is not the maximum number of structures provided to the user, which is\\ncontrolled by –m, -M, --maximum.\\nDefault is 100 structures."
    i_percent: "Specify a maximum percent difference in folding free energy change for\\ninternally generated suboptimal structures for each call of the dynamic\\nprogramming algorithm. For example, 20 would indicate 20%. This is not the\\nmaximum percent difference in energy for structures provided to the user,\\nwhich is controlled by –p, -P, --percent.\\nDefault is 20%."
    i_window: "Specify a window size for the internally generated suboptimal structures\\nfor each call of the dynamic programming algorithm.\\nThis is not the window for structures provided to the user, which is\\ncontrolled by –w, -W, --window.\\nDefault is determined by the length of the sequence."
    maximum: "Specify a maximum number of structures to be outputted. Note that\\nsuboptimal structures are generated until either the maximum number of\\nstructures is reached or the maximum percent difference is reached\\n(below).\\nDefault is 20 structures."
    percent: "Specify a maximum percent difference in folding free energy change for\\ngenerating suboptimal structures in the output. For example, 10 would\\nindicate 10%.\\nDefault is 10%."
    penalty_one: "Specify a pseudoknot penalty P1.\\nDefault is 0.35 kcal/mol."
    penalty_two: "Specify a pseudoknot penalty P2.\\nDefault is 0.65 kcal/mol."
    pseudo_knotted_helices: "Specify maximum number of helices to be processed.\\nDefault is 100 helices."
    shape: "Specify a SHAPE restraints file to be applied. These restraints\\nspecifically use SHAPE pseudoenergy restraints.\\nDefault is no SHAPE restraint file specified."
    shape_intercept: "Specify an intercept used with SHAPE restraints.\\nDefault is -0.6 kcal/mol."
    shape_slope: "Specify an slope used with SHAPE restraints.\\nDefault is 1.8 kcal/mol."
    single_offset: "Specify a single-stranded offset file, which adds energy bonuses to\\nparticular single-stranded nucleotides.\\nDefault is to have no single-stranded offset specified."
    window: "Specify a window size for outputted suboptimal structures.\\nDefault is determined by the length of the sequence."
    warnings: "Set the behavior for non-critical warnings (e.g. related to invalid\\nnucleotide positions or duplicate data points in SHAPE data). Valid values\\nare:\\n* on  -- Warnings are written to standard output. (default)\\n* err -- Warnings are sent to STDERR. This can be used in automated scripts\\netc to detect problems.\\n* off -- Do not display warnings at all (not recommended)."
    experimental_pair_bonus: "Input text file with bonuses (in kcal) as a matrix. As with SHAPE, bonuses\\nwill be applied twice to internal base pairs, once to edge base pairs, and\\nnot at all to single stranded regions.\\nDefault is no experimental pair bonus file specified."
    xo: "Specify an intercept (overall offset) to use with the 2D experimental pair\\nbonus file.\\nDefault is 0.0 (no change to input bonuses)."
    xs: "Specify a number to multiply the experimental pair bonus matrix by.\\nDefault is 1.0 (no change to input bonuses).\\n"
    shape_knots: ""
    seq_file: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}