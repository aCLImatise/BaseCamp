version 1.0

task Upimapi.py {
  input {
    String? input_filename_can
    String? filename_of_output
    Boolean? excel
    String? annotation_columns
    String? annotation_databases
    Boolean? blast
    Boolean? full_id
    Boolean? fast_a
    String? step
  }
  command <<<
    upimapi.py \
      ~{if defined(input_filename_can) then ("--input " +  '"' + input_filename_can + '"') else ""} \
      ~{if defined(filename_of_output) then ("--output " +  '"' + filename_of_output + '"') else ""} \
      ~{true="--excel" false="" excel} \
      ~{if defined(annotation_columns) then ("--annotation-columns " +  '"' + annotation_columns + '"') else ""} \
      ~{if defined(annotation_databases) then ("--annotation-databases " +  '"' + annotation_databases + '"') else ""} \
      ~{true="--blast" false="" blast} \
      ~{true="--full-id" false="" full_id} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  parameter_meta {
    input_filename_can: "Input filename - can be a list of IDs (one per line) or a BLAST TSV file - if so, specify with the --blast parameter. If no file is given as input, will read from command line input"
    filename_of_output: "filename of output"
    excel: "Will produce output in EXCEL format (default is TSV)"
    annotation_columns: "List of UniProt columns to obtain information from"
    annotation_databases: "List of databases to cross-check with UniProt information"
    blast: "If input file is in BLAST TSV format"
    full_id: "If IDs are in 'full' format: tr|XXX|XXX"
    fast_a: "Output will be generated in FASTA format"
    step: "How many IDs to submit per request to the API (default is 1000)"
  }
}