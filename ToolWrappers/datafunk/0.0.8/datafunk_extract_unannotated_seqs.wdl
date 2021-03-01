version 1.0

task DatafunkExtractUnannotatedSeqs {
  input {
    File? input_fast_a
    String? input_metadata
    String? null_column
    File? index_column
    File? output_fast_a
    File? output_metadata
    File? output_tree
    File? input_tree
  }
  command <<<
    datafunk extract_unannotated_seqs \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""} \
      ~{if defined(null_column) then ("--null-column " +  '"' + null_column + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if defined(output_tree) then ("--output-tree " +  '"' + output_tree + '"') else ""} \
      ~{if defined(input_tree) then ("--input-tree " +  '"' + input_tree + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "fasta file to extract sequences from"
    input_metadata: "metadata whose columns and rows will be checked"
    null_column: "metadata column which will be checked as empty"
    index_column: "metadata column to match to fasta file"
    output_fast_a: "fasta file to write\\n"
    output_metadata: ""
    output_tree: ""
    input_tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}