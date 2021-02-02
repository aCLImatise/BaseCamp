version 1.0

task Upimapipy {
  input {
    File? input_filename_can
    File? filename_of_output
    Boolean? excel
    String? annotation_columns
    String? annotation_databases
    Boolean? blast
    Boolean? full_id
    Boolean? fast_a
    Int? step
  }
  command <<<
    upimapi_py \
      ~{if defined(input_filename_can) then ("--input " +  '"' + input_filename_can + '"') else ""} \
      ~{if defined(filename_of_output) then ("--output " +  '"' + filename_of_output + '"') else ""} \
      ~{if (excel) then "--excel" else ""} \
      ~{if defined(annotation_columns) then ("--annotation-columns " +  '"' + annotation_columns + '"') else ""} \
      ~{if defined(annotation_databases) then ("--annotation-databases " +  '"' + annotation_databases + '"') else ""} \
      ~{if (blast) then "--blast" else ""} \
      ~{if (full_id) then "--full-id" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  parameter_meta {
    input_filename_can: "Input filename - can be a list of IDs (one per line)\\nor a BLAST TSV file - if so, specify with the --blast\\nparameter. If no file is given as input, will read\\nfrom command line input"
    filename_of_output: "filename of output"
    excel: "Will produce output in EXCEL format (default is TSV)"
    annotation_columns: "List of UniProt columns to obtain information from"
    annotation_databases: "List of databases to cross-check with UniProt\\ninformation"
    blast: "If input file is in BLAST TSV format"
    full_id: "If IDs are in 'full' format: tr|XXX|XXX"
    fast_a: "Output will be generated in FASTA format"
    step: "How many IDs to submit per request to the API (default\\nis 1000)"
  }
  output {
    File out_stdout = stdout()
    File out_filename_of_output = "${in_filename_of_output}"
  }
}