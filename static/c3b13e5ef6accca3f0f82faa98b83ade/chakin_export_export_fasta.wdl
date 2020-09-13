version 1.0

task ChakinExportExportFasta {
  input {
    Boolean? file
    String options
  }
  command <<<
    chakin export export_fasta \
      ~{options} \
      ~{if (file) then "--file" else ""}
  >>>
  parameter_meta {
    file: "If true, write to files in CWD"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}