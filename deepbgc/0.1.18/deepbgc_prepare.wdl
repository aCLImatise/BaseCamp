version 1.0

task DeepbgcPrepare {
  input {
    String? limit_to_record
    Boolean? prodigal_meta_mode
    Boolean? protein
    String? output_gbk
    String? output_tsv
    Boolean? debug
    String inputs
  }
  command <<<
    deepbgc prepare \
      ~{inputs} \
      ~{if defined(limit_to_record) then ("--limit-to-record " +  '"' + limit_to_record + '"') else ""} \
      ~{true="--prodigal-meta-mode" false="" prodigal_meta_mode} \
      ~{true="--protein" false="" protein} \
      ~{if defined(output_gbk) then ("--output-gbk " +  '"' + output_gbk + '"') else ""} \
      ~{if defined(output_tsv) then ("--output-tsv " +  '"' + output_tsv + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    limit_to_record: "Process only specific record ID. Can be provided multiple times"
    prodigal_meta_mode: "Run Prodigal in '-p meta' mode to enable detecting genes in short contigs"
    protein: "Accept amino-acid protein sequences as input (experimental). Will treat each file as a single record with multiple proteins."
    output_gbk: "Output GenBank file path"
    output_tsv: "Output TSV file path"
    debug: ""
    inputs: "Input sequence file path(s) (FASTA/GenBank)"
  }
}