version 1.0

task MsiRenameColumnssh {
  input {
    File? _metadata_file
    String? e
    String? n
    Directory? _output_file
  }
  command <<<
    msi_rename_columns_sh \
      ~{if defined(_metadata_file) then ("-i " +  '"' + _metadata_file + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(n) then ("-N " +  '"' + n + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  parameter_meta {
    _metadata_file: "- metadata file*"
    e: "- should exist in the metadata_file [default: barcode_id]"
    n: "- should exist in the metadata_file [default: sample_id]"
    _output_file: "-  output file"
  }
  output {
    File out_stdout = stdout()
    Directory out__output_file = "${in__output_file}"
  }
}