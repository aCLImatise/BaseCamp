version 1.0

task MakeDbpyIhmm {
  input {
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    File? ihmmunealign_output_file
    Array[String] list_folders_andor
    Array[String] list_containing_sequences
    Array[File] one_zero_x
    Boolean? as_is_id
    Boolean? partial
    File? extended
  }
  command <<<
    MakeDb_py ihmm \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(ihmmunealign_output_file) then ("-i " +  '"' + ihmmunealign_output_file + '"') else ""} \
      ~{if defined(list_folders_andor) then ("-r " +  '"' + list_folders_andor + '"') else ""} \
      ~{if defined(list_containing_sequences) then ("-s " +  '"' + list_containing_sequences + '"') else ""} \
      ~{if defined(one_zero_x) then ("--10x " +  '"' + one_zero_x + '"') else ""} \
      ~{if (as_is_id) then "--asis-id" else ""} \
      ~{if (partial) then "--partial" else ""} \
      ~{if (extended) then "--extended" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    ihmmunealign_output_file: "iHMMune-Align output file. (default: None)"
    list_folders_andor: "List of folders and/or FASTA files containing the set\\nof germline sequences used by iHMMune-Align. These\\nreference sequences must contain IMGT-numbering\\nspacers (gaps) in the V segment. (default: None)"
    list_containing_sequences: "List of input FASTA files (with .fasta, .fna or .fa\\nextension) containing sequences. (default: None)"
    one_zero_x: "Table file containing 10X annotations (with .csv or\\n.tsv extension). (default: None)"
    as_is_id: "Specify to prevent input sequence headers from being\\nparsed to add new columns to database. Parsing of\\nsequence headers requires headers to be in the pRESTO\\nannotation format, so this should be specified when\\nsequence headers are incompatible with the pRESTO\\nannotation scheme. Note, unrecognized header formats\\nwill default to this behavior. (default: False)"
    partial: "If specified, include incomplete V(D)J alignments in\\nthe pass file instead of the fail file. An incomplete\\nalignment is defined as a record for which a valid\\nIMGT-gapped sequence cannot be built or that is\\nmissing a V gene assignment, J gene assignment,\\njunction region, or productivity call. (default:\\nFalse)"
    extended: "Specify to include additional aligner specific fields\\nin the output. Adds the path score of the iHMMune-\\nAlign hidden Markov model as vdj_score; adds fwr1,\\nfwr2, fwr3, fwr4, cdr1, cdr2 and cdr3. (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_ihmmunealign_output_file = "${in_ihmmunealign_output_file}"
    File out_extended = "${in_extended}"
  }
}