version 1.0

task ChakinExportExportFasta {
  input {
    Boolean? true_write_files
    String options
  }
  command <<<
    chakin export export_fasta \
      ~{options} \
      ~{if (true_write_files) then "--file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    true_write_files: "If true, write to files in CWD"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}