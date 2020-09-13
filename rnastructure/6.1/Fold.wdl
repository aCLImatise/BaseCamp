version 1.0

task Fold {
  input {
    Boolean? dna
    Boolean? disable_coax
    Boolean? bracket
    Boolean? mfe
    File? quiet
    Boolean? simple_i_loops
    Boolean? alphabet
    Boolean? bootstrap
    Boolean? constraint
    Boolean? cm_ct
    Boolean? dms
    Boolean? d_shape
    Boolean? d_shape_slope
    Boolean? double_offset
    Boolean? loop
    Boolean? maximum
    Boolean? max_distance
    Boolean? name
    Boolean? percent
    Boolean? save
    Boolean? shape
    Boolean? shape_intercept
    Boolean? shape_slope
    Boolean? single_offset
    Boolean? temperature
    Boolean? unpaired_shape_intercept
    Boolean? unpaired_shape_slope
    Boolean? window
    Boolean? warnings
    Boolean? experimental_pair_bonus
    Boolean? xo
    Boolean? xs
    File sequence_file
    File ct_file
  }
  command <<<
    Fold \
      ~{sequence_file} \
      ~{ct_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (disable_coax) then "--disablecoax" else ""} \
      ~{if (bracket) then "--bracket" else ""} \
      ~{if (mfe) then "--MFE" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (simple_i_loops) then "--simple_iloops" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (cm_ct) then "--CMCT" else ""} \
      ~{if (dms) then "--DMS" else ""} \
      ~{if (d_shape) then "--DSHAPE" else ""} \
      ~{if (d_shape_slope) then "--DSHAPEslope" else ""} \
      ~{if (double_offset) then "--doubleOffset" else ""} \
      ~{if (loop) then "--loop" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (max_distance) then "--maxdistance" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (shape_intercept) then "--SHAPEintercept" else ""} \
      ~{if (shape_slope) then "--SHAPEslope" else ""} \
      ~{if (single_offset) then "--singleOffset" else ""} \
      ~{if (temperature) then "--temperature" else ""} \
      ~{if (unpaired_shape_intercept) then "--unpairedSHAPEintercept" else ""} \
      ~{if (unpaired_shape_slope) then "--unpairedSHAPEslope" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (warnings) then "--warnings" else ""} \
      ~{if (experimental_pair_bonus) then "--experimentalPairBonus" else ""} \
      ~{if (xo) then "-xo" else ""} \
      ~{if (xs) then "-xs" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    disable_coax: "Specify that coaxial stacking recusions should not be used. This option\\nuses a less realistic energy function in exchange for a faster\\ncalculation."
    bracket: "Write the predicted structure in dot-bracket notation (DBN) instead of CT\\nformat."
    mfe: "Specify that only the minimum free energy structure is needed.\\nNo savefiles can be generated.\\nThis saves nearly half the calculation time, but provides less\\ninformation."
    quiet: "Suppress unnecessary output. This option is implied when the output file is\\n'-' (STDOUT)."
    simple_i_loops: "Specify that the O(N^3) internal loop search should be used. This speeds up\\nthe calculation if large internal loops are allowed using the -l option."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    bootstrap: "Specify the number of bootstrap iterations to be done to retrieve base pair\\nconfidence.\\nDefaults to no bootstrapping."
    constraint: "Specify a constraints file to be applied.\\nDefault is to have no constraints applied."
    cm_ct: "Specify a CMCT constraints file to be applied. These constraints are\\npseudoenergy constraints.\\nDefault is to have no constraints applied."
    dms: "Specify a DMS restraints file to be applied. These restraints are\\npseudoenergy constraints.\\nDefault is to have no restraints applied."
    d_shape: "Specify a differential SHAPE restraints file to be applied. These\\nconstraints are pseudoenergy restraints.\\nDefault is to have no restraints applied."
    d_shape_slope: "Specify a slope used with differential SHAPE restraints.\\nDefault is 2.11 kcal/mol."
    double_offset: "Specify a double-stranded offset file, which adds energy bonuses to\\nparticular double-stranded nucleotides.\\nDefault is to have no double-stranded offset specified."
    loop: "Specify a maximum internal/bulge loop size.\\nDefault is 30 unpaired numcleotides."
    maximum: "Specify a maximum number of structures.\\nDefault is 20 structures."
    max_distance: "Specify a maximum pairing distance between nucleotides.\\nDefault is no restriction on distance between pairs."
    name: "Specify a name for the sequence. This will override the name in the\\nsequence file."
    percent: "Specify a maximum percent energy difference.\\nDefault is 10 percent (specified as 10, not 0.1)."
    save: "Specify the name of a save file, needed for dotplots and refolding.\\nDefault is not to generate a save file."
    shape: "Specify a SHAPE restraints file to be applied. These constraints are\\npseudoenergy restraints.\\nDefault is to have no restraints applied."
    shape_intercept: "Specify an intercept used with SHAPE restraints.\\nDefault is -0.6 kcal/mol."
    shape_slope: "Specify a slope used with SHAPE renstraints.\\nDefault is 1.8 kcal/mol."
    single_offset: "Specify a single-stranded offset file, which adds energy bonuses to\\nparticular single-stranded nucleotides.\\nDefault is to have no single-stranded offset specified."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C."
    unpaired_shape_intercept: "Specify an intercept used with unpaired SHAPE constraints.\\nDefault is 0 kcal/mol."
    unpaired_shape_slope: "Specify a slope used with unpaired SHAPE constraints.\\nDefault is 0 kcal/mol."
    window: "Specify a window size.\\nDefault is determined by the length of the sequence."
    warnings: "Set the behavior for non-critical warnings (e.g. related to invalid\\nnucleotide positions or duplicate data points in SHAPE data). Valid values\\nare:\\n* on  -- Warnings are written to standard output. (default)\\n* err -- Warnings are sent to STDERR. This can be used in automated scripts\\netc to detect problems.\\n* off -- Do not display warnings at all (not recommended)."
    experimental_pair_bonus: "Input text file with bonuses (in kcal) as a matrix. As with SHAPE, bonuses\\nwill be applied twice to internal base pairs, once to edge base pairs, and\\nnot at all to single stranded regions.\\nDefault is no experimental pair bonus file specified."
    xo: "Specify an intercept (overall offset) to use with the 2D experimental pair\\nbonus file.\\nDefault is 0.0 (no change to input bonuses)."
    xs: "Specify a number to multiply the experimental pair bonus matrix by.\\nDefault is 1.0 (no change to input bonuses).\\n"
    sequence_file: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_quiet = "${in_quiet}"
  }
}