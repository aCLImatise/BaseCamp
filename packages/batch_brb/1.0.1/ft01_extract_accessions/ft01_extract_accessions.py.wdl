version 1.0

task Ft01ExtractAccessionspy {
  input {
    String csv
  }
  command <<<
    ft01_extract_accessions_py \
      ~{csv}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    csv: "CSV of ortholog results, first column must be queries with\\nheader Accession, remaining columns should be orthology results\\nwith one organism per column"
  }
  output {
    File out_stdout = stdout()
  }
}