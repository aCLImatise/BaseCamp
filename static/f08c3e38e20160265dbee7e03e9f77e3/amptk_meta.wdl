version 1.0

task AmptkMeta {
  input {
    Boolean? input_otu_table
    Boolean? meta_data_table
    Boolean? out
    Boolean? split_taxonomy
    String arguments
  }
  command <<<
    amptk meta \
      ~{arguments} \
      ~{if (input_otu_table) then "--input" else ""} \
      ~{if (meta_data_table) then "--meta" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (split_taxonomy) then "--split_taxonomy" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    input_otu_table: "Input OTU table"
    meta_data_table: "Meta data table (csv format)"
    out: "Output (meta data + pivotted OTU table)"
    split_taxonomy: "Make separate tables for groups of taxonomy [k,p,c,o,f,g]"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}