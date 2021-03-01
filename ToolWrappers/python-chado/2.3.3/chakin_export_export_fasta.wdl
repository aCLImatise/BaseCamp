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
    docker: "None"
  }
  parameter_meta {
    true_write_files: "If true, write to files in CWD"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}