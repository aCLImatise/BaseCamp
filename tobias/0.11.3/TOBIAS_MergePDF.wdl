version 1.0

task TOBIASMergePDF {
  input {
    Boolean? pdf_files_join
    Boolean? path_output_default
  }
  command <<<
    TOBIAS MergePDF \
      ~{true="--input" false="" pdf_files_join} \
      ~{true="--output" false="" path_output_default}
  >>>
  parameter_meta {
    pdf_files_join: "[ [ ...]]  PDF files to join"
    path_output_default: "Path to output file (default: ./merged.pdf)"
  }
}