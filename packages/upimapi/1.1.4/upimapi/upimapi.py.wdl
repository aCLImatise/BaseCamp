version 1.0

task Upimapipy {
  input {
    File? input_filename_be
    File? filename_output_uniprot
    Boolean? excel
    String? annotation_columns
    String? annotation_databases
    Boolean? blast
    Boolean? full_id
    Boolean? fast_a
    Int? step
    Int? max_tries
    Boolean? use_diamond
    String? diamond_output
    String? database
    Int? threads
    Int? max_target_seqs
    Int? block_size
    Int? index_chunks
  }
  command <<<
    upimapi_py \
      ~{if defined(input_filename_be) then ("--input " +  '"' + input_filename_be + '"') else ""} \
      ~{if defined(filename_output_uniprot) then ("--output " +  '"' + filename_output_uniprot + '"') else ""} \
      ~{if (excel) then "--excel" else ""} \
      ~{if defined(annotation_columns) then ("--annotation-columns " +  '"' + annotation_columns + '"') else ""} \
      ~{if defined(annotation_databases) then ("--annotation-databases " +  '"' + annotation_databases + '"') else ""} \
      ~{if (blast) then "--blast" else ""} \
      ~{if (full_id) then "--full-id" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(max_tries) then ("--max-tries " +  '"' + max_tries + '"') else ""} \
      ~{if (use_diamond) then "--use-diamond" else ""} \
      ~{if defined(diamond_output) then ("--diamond-output " +  '"' + diamond_output + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(max_target_seqs) then ("--max-target-seqs " +  '"' + max_target_seqs + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(index_chunks) then ("--index-chunks " +  '"' + index_chunks + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/upimapi:1.1.4--hdfd78af_0"
  }
  parameter_meta {
    input_filename_be: "Input filename - can be: 1. a file containing a list\\nof IDs (one per line) 2. a BLAST TSV result file\\n(requires to be specified with the --blast parameter\\n3. a protein FASTA file to be annotated (requires the\\n--use-diamond and -db parameters) 4. nothing! If so,\\nwill read input from command line, and parse as CSV\\n(id1,id2,...)"
    filename_output_uniprot: "filename of output of UniProt information"
    excel: "Will produce output in EXCEL format (default is TSV)"
    annotation_columns: "List of UniProt columns to obtain information from"
    annotation_databases: "List of databases to cross-check with UniProt\\ninformation"
    blast: "If input file is in BLAST TSV format (will consider\\none ID per line if not set)"
    full_id: "If IDs in database are in 'full' format: tr|XXX|XXX"
    fast_a: "Output will be generated in FASTA format"
    step: "How many IDs to submit per request to the API (default\\nis 1000)"
    max_tries: "How many times to try obtaining information from\\nUniProt before giving up"
    use_diamond: "Use DIAMOND to annotate sequences before mapping IDs.\\nRequires protein FASTA files as input for \\\"-db\\\" and\\n\\\"-i\\\" parameters"
    diamond_output: "DIAMOND's output foldername"
    database: "Reference database for annotation with DIAMOND.\\nNOTICE: if database's IDs are in 'full' format\\n(tr|XXX|XXX), specify with \\\"\\\"--full-id\\\" parameter."
    threads: "Number of threads to use in annotation steps"
    max_target_seqs: "Number of annotations to output per sequence inputed"
    block_size: "Billions of sequence letters to be processed at a time\\n(UPIMAPI determines best value for this parameter if\\nnot set"
    index_chunks: "Number of chunks for processing the seed index\\n(UPIMAPI determines best value for this parameter if\\nnot set"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_uniprot = "${in_filename_output_uniprot}"
  }
}