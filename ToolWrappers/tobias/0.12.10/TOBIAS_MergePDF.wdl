version 1.0

task TOBIASMergePDF {
  input {
    Boolean? pdf_files_join
    File? path_output_file
  }
  command <<<
    TOBIAS MergePDF \
      ~{if (pdf_files_join) then "--input" else ""} \
      ~{if (path_output_file) then "--output" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0"
  }
  parameter_meta {
    pdf_files_join: "[ [ ...]]  PDF files to join"
    path_output_file: "Path to output file (default: ./merged.pdf)"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}