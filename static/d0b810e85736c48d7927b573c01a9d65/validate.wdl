version 1.0

task Validate {
  input {
    Boolean? info
    Boolean? quiet
    Boolean? unknown
    Boolean? alphabet
    Boolean? length
    Boolean? type
    File file_path
  }
  command <<<
    validate \
      ~{file_path} \
      ~{if (info) then "--info" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (unknown) then "--unknown" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (type) then "--type" else ""}
  >>>
  parameter_meta {
    info: "Display information about the sequence. (This also implies --quiet.)\\nCurrently the only information shown is the sequence length of each\\nvalidated sequence."
    quiet: "Suppress unnecessary output. The process exit code indicates the result of\\nvalidation (as usual)."
    unknown: "Suppress errors due to unknown bases in sequences."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    length: "Limit the length of the validated sequence to the specified number of\\nbases."
    type: "The type of file validation to perform. This can be numeric (1=CT,\\n2=SEQ/FASTA, 3=PFS, 4=SAV, 5=DotBracket, 6=CON, 7=SHAPE/CHEM, 8=OLIS) or\\ntext (one of: ct, seq|fasta, pfs, sav, dot|dbn|braket, con, shape|chem,\\nlis|list|olis) or \\\"auto\\\" (the default) which uses the file extension to\\ndetermine the type.\\n"
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}