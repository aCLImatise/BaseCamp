version 1.0

task TOBIASMergePDF {
  input {
    Boolean? pdf_files_join
    File? path_output_default
  }
  command <<<
    TOBIAS MergePDF \
      ~{if (pdf_files_join) then "--input" else ""} \
      ~{if (path_output_default) then "--output" else ""}
  >>>
  parameter_meta {
    pdf_files_join: "[ [ ...]]  PDF files to join"
    path_output_default: "Path to output file (default: ./merged.pdf)"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_default = "${in_path_output_default}"
  }
}