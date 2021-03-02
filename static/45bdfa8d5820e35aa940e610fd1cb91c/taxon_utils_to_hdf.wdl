version 1.0

task TaxonutilsToHdf {
  input {
    String? table_name
    Boolean? overwrite
    Int? index_size
    Int? chunk_size
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    taxon_utils to_hdf \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(table_name) then ("--table-name " +  '"' + table_name + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(index_size) then ("--index-size " +  '"' + index_size + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    table_name: "Name of the table/storage to use  [default: taxa]"
    overwrite: "Overwrite the file, instead of appending to it"
    index_size: "Maximum number of characters for the gene_id\\n[default: 12]"
    chunk_size: "Chunk size to use when reading the input file\\n[default: 5000000]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}