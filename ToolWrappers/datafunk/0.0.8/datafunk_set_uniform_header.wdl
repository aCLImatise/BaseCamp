version 1.0

task DatafunkSetUniformHeader {
  input {
    String? var_0
    String? var_1
    String? var_2
    String? output_metadata
    Boolean? gi_said
    Boolean? cog_uk
    File? log
    String? column_name
    String? index_column
    Boolean? extended
    String _inputmetadata
    String _outputfasta
    String _outputmetadata
  }
  command <<<
    datafunk set_uniform_header \
      ~{_inputmetadata} \
      ~{_outputfasta} \
      ~{_outputmetadata} \
      ~{if defined(var_0) then ("--input-fasta " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("--input-metadata " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("--output-fasta " +  '"' + var_2 + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if (gi_said) then "--gisaid" else ""} \
      ~{if (cog_uk) then "--cog-uk" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(column_name) then ("--column-name " +  '"' + column_name + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if (extended) then "--extended" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    var_0: "Input FASTA"
    var_1: "Input CSV or TSV"
    var_2: "Input FASTA"
    output_metadata: "Input CSV or TSV"
    gi_said: "Input data is from GISAID"
    cog_uk: "Input data is from COG-UK"
    log: "Log file to use (otherwise uses stdout)"
    column_name: "Name of column in metadata corresponding to fasta\\nheader"
    index_column: "Name of column in metadata to parse for string\\nmatching with fasta header"
    extended: "Longer fasta name"
    _inputmetadata: "--input-metadata"
    _outputfasta: "--output-fasta"
    _outputmetadata: "--output-metadata"
  }
  output {
    File out_stdout = stdout()
  }
}