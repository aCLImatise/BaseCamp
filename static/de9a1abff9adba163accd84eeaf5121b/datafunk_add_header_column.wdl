version 1.0

task DatafunkAddHeaderColumn {
  input {
    String? input_fasta
    String? input_csv_tsv
    String? output_csv
    String? output_fast_a
    Boolean? gi_said
    Boolean? cog_uk
    File? log
    String? column_name
    Array[String] columns
    String _inputmetadata
    String _outputmetadata
    String _outputfasta
  }
  command <<<
    datafunk add_header_column \
      ~{_inputmetadata} \
      ~{_outputmetadata} \
      ~{_outputfasta} \
      ~{if defined(input_fasta) then ("--input-fasta " +  '"' + input_fasta + '"') else ""} \
      ~{if defined(input_csv_tsv) then ("--input-metadata " +  '"' + input_csv_tsv + '"') else ""} \
      ~{if defined(output_csv) then ("--output-metadata " +  '"' + output_csv + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (gi_said) then "--gisaid" else ""} \
      ~{if (cog_uk) then "--cog-uk" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(column_name) then ("--column-name " +  '"' + column_name + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fasta: "Input FASTA"
    input_csv_tsv: "Input CSV or TSV"
    output_csv: "Output CSV"
    output_fast_a: "Output FASTA"
    gi_said: "Input data is from GISAID"
    cog_uk: "Input data is from COG-UK"
    log: "Log file to use (otherwise uses stdout)"
    column_name: "Name of column in metadata corresponding to fasta\\nheader"
    columns: "List of columns in metadata to parse for string\\nmatching with fasta header\\n"
    _inputmetadata: "--input-metadata"
    _outputmetadata: "--output-metadata"
    _outputfasta: "--output-fasta"
  }
  output {
    File out_stdout = stdout()
  }
}