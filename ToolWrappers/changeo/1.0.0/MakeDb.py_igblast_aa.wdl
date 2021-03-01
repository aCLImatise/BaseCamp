version 1.0

task MakeDbpyIgblastaa {
  input {
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Array[String] igblast_output_files
    Array[String] list_folders_andor
    Array[String] list_containing_sequences
    Array[File] one_zero_x
    Boolean? as_is_id
    Boolean? as_is_calls
    Boolean? extended
    String? regions
  }
  command <<<
    MakeDb_py igblast_aa \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(igblast_output_files) then ("-i " +  '"' + igblast_output_files + '"') else ""} \
      ~{if defined(list_folders_andor) then ("-r " +  '"' + list_folders_andor + '"') else ""} \
      ~{if defined(list_containing_sequences) then ("-s " +  '"' + list_containing_sequences + '"') else ""} \
      ~{if defined(one_zero_x) then ("--10x " +  '"' + one_zero_x + '"') else ""} \
      ~{if (as_is_id) then "--asis-id" else ""} \
      ~{if (as_is_calls) then "--asis-calls" else ""} \
      ~{if (extended) then "--extended" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""}
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
    igblast_output_files: "IgBLAST output files in format 7 with query sequence\\n(igblastp argument '-outfmt \\\"7 std qseq sseq btop\\\"').\\n(default: None)"
    list_folders_andor: "List of folders and/or fasta files containing the same\\ngermline set used in the IgBLAST alignment. These\\nreference sequences must contain IMGT-numbering\\nspacers (gaps) in the V segment. (default: None)"
    list_containing_sequences: "List of input FASTA files (with .fasta, .fna or .fa\\nextension), containing sequences. (default: None)"
    one_zero_x: "Table file containing 10X annotations (with .csv or\\n.tsv extension). (default: None)"
    as_is_id: "Specify to prevent input sequence headers from being\\nparsed to add new columns to database. Parsing of\\nsequence headers requires headers to be in the pRESTO\\nannotation format, so this should be specified when\\nsequence headers are incompatible with the pRESTO\\nannotation scheme. Note, unrecognized header formats\\nwill default to this behavior. (default: False)"
    as_is_calls: "Specify to prevent gene calls from being parsed into\\nstandard allele names in both the IgBLAST output and\\nreference database. Note, this requires the sequence\\nidentifiers in the reference sequence set and the\\nIgBLAST database to be exact string matches. (default:\\nFalse)"
    extended: "Specify to include additional aligner specific fields\\nin the output. Adds v_score, v_identity, v_support,\\nv_cigar, fwr1, fwr2, fwr3, cdr1 and cdr2. (default:\\nFalse)"
    regions: "IMGT CDR and FWR boundary definition to use. (default:\\ndefault)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}