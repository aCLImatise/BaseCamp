version 1.0

task MaxExpect {
  input {
    Boolean? dna
    Boolean? sequence
    Boolean? alphabet
    Boolean? gamma
    Boolean? percent
    Boolean? structures
    Boolean? window
    String specified_dot
  }
  command <<<
    MaxExpect \
      ~{specified_dot} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (gamma) then "--gamma" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (structures) then "--structures" else ""} \
      ~{if (window) then "--window" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna: "This flag only matters if the input file is a sequence file and has been\\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\\nto be used.\\nDefault is to use RNA parameters."
    sequence: "Identify the input file format as a sequence file."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    gamma: "Specify the weight which should be placed on base pairs.\\nDefault is 1.0."
    percent: "Specify a maximum percent energy difference.\\nDefault is 50 (ie, 50, not 0.5)."
    structures: "Specify a maximum number of structures.\\nDefault is 1000 structures."
    window: "Specify a window size.\\nDefault is 5 nucleotides.\\n"
    specified_dot: "<ct file>"
  }
  output {
    File out_stdout = stdout()
  }
}