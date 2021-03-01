version 1.0

task MakeDbpyImgt {
  input {
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Directory? zipped_imgt_output
    Boolean? list_fasta_files
    Array[String] list_folders_andor
    Array[File] one_zero_x
    Boolean? as_is_id
    Boolean? partial
    Boolean? extended
  }
  command <<<
    MakeDb_py imgt \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(zipped_imgt_output) then ("-i " +  '"' + zipped_imgt_output + '"') else ""} \
      ~{if (list_fasta_files) then "-s" else ""} \
      ~{if defined(list_folders_andor) then ("-r " +  '"' + list_folders_andor + '"') else ""} \
      ~{if defined(one_zero_x) then ("--10x " +  '"' + one_zero_x + '"') else ""} \
      ~{if (as_is_id) then "--asis-id" else ""} \
      ~{if (partial) then "--partial" else ""} \
      ~{if (extended) then "--extended" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/changeo:1.0.2--py_0"
  }
  parameter_meta {
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    zipped_imgt_output: "Either zipped IMGT output files (.zip or .txz) or a\\nfolder containing unzipped IMGT output files (which\\nmust include 1_Summary, 2_IMGT-gapped, 3_Nt-sequences,\\nand 6_Junction). (default: None)"
    list_fasta_files: "[SEQ_FILES [SEQ_FILES ...]]\\nList of FASTA files (with .fasta, .fna or .fa\\nextension) that were submitted to IMGT/HighV-QUEST. If\\nunspecified, sequence identifiers truncated by\\nIMGT/HighV-QUEST will not be corrected. (default:\\nNone)"
    list_folders_andor: "List of folders and/or fasta files containing the\\ngermline sequence set used by IMGT/HighV-QUEST. These\\nreference sequences must contain IMGT-numbering\\nspacers (gaps) in the V segment. If unspecified, the\\ngermline sequence reconstruction will not be included\\nin the output. (default: None)"
    one_zero_x: "Table file containing 10X annotations (with .csv or\\n.tsv extension). (default: None)"
    as_is_id: "Specify to prevent input sequence headers from being\\nparsed to add new columns to database. Parsing of\\nsequence headers requires headers to be in the pRESTO\\nannotation format, so this should be specified when\\nsequence headers are incompatible with the pRESTO\\nannotation scheme. Note, unrecognized header formats\\nwill default to this behavior. (default: False)"
    partial: "If specified, include incomplete V(D)J alignments in\\nthe pass file instead of the fail file. An incomplete\\nalignment is defined as a record that is missing a V\\ngene assignment, J gene assignment, junction region,\\nor productivity call. (default: False)"
    extended: "Specify to include additional aligner specific fields\\nin the output. Adds <vdj>_score, <vdj>_identity>,\\nfwr1, fwr2, fwr3, fwr4, cdr1, cdr2, cdr3, n1_length,\\nn2_length, p3v_length, p5d_length, p3d_length,\\np5j_length and d_frame. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_zipped_imgt_output = "${in_zipped_imgt_output}"
  }
}