version 1.0

task DeepbgcPrepare {
  input {
    String? limit_to_record
    Boolean? prodigal_meta_mode
    Boolean? protein
    File? output_gbk
    File? output_tsv
    String inputs
  }
  command <<<
    deepbgc prepare \
      ~{inputs} \
      ~{if defined(limit_to_record) then ("--limit-to-record " +  '"' + limit_to_record + '"') else ""} \
      ~{if (prodigal_meta_mode) then "--prodigal-meta-mode" else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(output_gbk) then ("--output-gbk " +  '"' + output_gbk + '"') else ""} \
      ~{if defined(output_tsv) then ("--output-tsv " +  '"' + output_tsv + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepbgc:0.1.26--py_0"
  }
  parameter_meta {
    limit_to_record: "Process only specific record ID. Can be provided multiple times"
    prodigal_meta_mode: "Run Prodigal in '-p meta' mode to enable detecting genes in short contigs"
    protein: "Accept amino-acid protein sequences as input (experimental). Will treat each file as a single record with multiple proteins."
    output_gbk: "Output GenBank file path"
    output_tsv: "Output TSV file path\\n"
    inputs: "Input sequence file path(s) (FASTA/GenBank)"
  }
  output {
    File out_stdout = stdout()
    File out_output_gbk = "${in_output_gbk}"
    File out_output_tsv = "${in_output_tsv}"
  }
}