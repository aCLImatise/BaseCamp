version 1.0

task MakeDbpyIgblast {
  input {
    Array[String] i
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Array[File] one_zero_x
    Boolean? as_is_id
    Boolean? as_is_calls
    Boolean? partial
    Boolean? extended
    String? regions
  }
  command <<<
    MakeDb_py igblast \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(one_zero_x) then ("--10x " +  '"' + one_zero_x + '"') else ""} \
      ~{if (as_is_id) then "--asis-id" else ""} \
      ~{if (as_is_calls) then "--asis-calls" else ""} \
      ~{if (partial) then "--partial" else ""} \
      ~{if (extended) then "--extended" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""}
  >>>
  parameter_meta {
    i: "[--10x CELLRANGER_FILE [CELLRANGER_FILE ...]]\\n[--asis-id] [--asis-calls] [--partial] [--extended]\\n[--regions {default,rhesus-igl}]"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    one_zero_x: "Table file containing 10X annotations (with .csv or\\n.tsv extension). (default: None)"
    as_is_id: "Specify to prevent input sequence headers from being\\nparsed to add new columns to database. Parsing of\\nsequence headers requires headers to be in the pRESTO\\nannotation format, so this should be specified when\\nsequence headers are incompatible with the pRESTO\\nannotation scheme. Note, unrecognized header formats\\nwill default to this behavior. (default: False)"
    as_is_calls: "Specify to prevent gene calls from being parsed into\\nstandard allele names in both the IgBLAST output and\\nreference database. Note, this requires the sequence\\nidentifiers in the reference sequence set and the\\nIgBLAST database to be exact string matches. (default:\\nFalse)"
    partial: "If specified, include incomplete V(D)J alignments in\\nthe pass file instead of the fail file. An incomplete\\nalignment is defined as a record for which a valid\\nIMGT-gapped sequence cannot be built or that is\\nmissing a V gene assignment, J gene assignment,\\njunction region, or productivity call. (default:\\nFalse)"
    extended: "Specify to include additional aligner specific fields\\nin the output. Adds <vdj>_score, <vdj>_identity,\\n<vdj>_support, <vdj>_cigar, fwr1, fwr2, fwr3, fwr4,\\ncdr1, cdr2 and cdr3. (default: False)"
    regions: "IMGT CDR and FWR boundary definition to use. (default:\\ndefault)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}