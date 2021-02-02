version 1.0

task Partition {
  input {
    Boolean? dna
    Boolean? disable_coax
    Boolean? quiet
    Boolean? alphabet
    Boolean? constraint
    Boolean? double_offset
    Boolean? max_distance
    Boolean? shape
    Boolean? shape_intercept
    Boolean? shape_slope
    Boolean? temperature
    Boolean? experimental_pair_bonus
    Boolean? xo
    Boolean? xs
    File sequence_file
    File pfs_file
  }
  command <<<
    partition \
      ~{sequence_file} \
      ~{pfs_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (disable_coax) then "--disablecoax" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (double_offset) then "--doubleOffset" else ""} \
      ~{if (max_distance) then "--maxdistance" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (shape_intercept) then "--SHAPEintercept" else ""} \
      ~{if (shape_slope) then "--SHAPEslope" else ""} \
      ~{if (temperature) then "--temperature" else ""} \
      ~{if (experimental_pair_bonus) then "--experimentalPairBonus" else ""} \
      ~{if (xo) then "-xo" else ""} \
      ~{if (xs) then "-xs" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    disable_coax: "Specify that coaxial stacking recusions should not be used. This option\\nuses a less realistic energy function in exchange for a faster\\ncalculation."
    quiet: "Suppress progress display and other unnecessary output."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    constraint: "Specify a constraints file to be applied.\\nDefault is to have no constraints applied."
    double_offset: "Specify a double-stranded offset file, which adds energy bonuses to\\nparticular double-stranded nucleotides.\\nDefault is to have no double-stranded offset specified."
    max_distance: "Specify a maximum pairing distance between nucleotides.\\nDefault is no restriction on distance between pairs."
    shape: "Specify a SHAPE constraints file to be applied. These constraints are\\npseudoenergy constraints.\\nDefault is to have no constraints applied."
    shape_intercept: "Specify an intercept used with SHAPE constraints.\\nDefault is -0.6 kcal/mol."
    shape_slope: "Specify a slope used with SHAPE constraints.\\nDefault is 1.8 kcal/mol."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C."
    experimental_pair_bonus: "Input text file with bonuses (in kcal) as a matrix. As with SHAPE, bonuses\\nwill be applied twice to internal base pairs, once to edge base pairs, and\\nnot at all to single stranded regions.\\nDefault is no experimental pair bonus file specified."
    xo: "Specify an intercept (overall offset) to use with the 2D experimental pair\\nbonus file.\\nDefault is 0.0 (no change to input bonuses)."
    xs: "Specify a number to multiply the experimental pair bonus matrix by.\\nDefault is 1.0 (no change to input bonuses).\\n"
    sequence_file: ""
    pfs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}