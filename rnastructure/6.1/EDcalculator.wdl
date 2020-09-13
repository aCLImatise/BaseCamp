version 1.0

task EDcalculator {
  input {
    Boolean? dna
    Boolean? raw
    Boolean? alphabet
    Boolean? constraint
    File? file
    Boolean? number
    File ct_structure_file
  }
  command <<<
    EDcalculator \
      ~{ct_structure_file} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (file) then "--file" else ""} \
      ~{if (number) then "--number" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used. The\\ndefault is to use RNA parameters."
    raw: "Output just the *Normalized* ensemble defect as a pure number (with no\\nadditional description)."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    constraint: "Specify a constraints file to be applied.\\nDefault is to have no constraints applied."
    file: "Output the results to the specified file instead of to the screen\\n(stdout)."
    number: "Specify the index of a particular structure for which to calculate the\\ndefect. The default is -1, which means to calculate the defect for all\\nstructures.\\n"
    ct_structure_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_file = "${in_file}"
  }
}