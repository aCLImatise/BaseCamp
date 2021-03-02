version 1.0

task JannovarDownloadOptional {
  input {
    String? s
    String? d
    String jan_novar_cli
    String download
  }
  command <<<
    jannovar download Optional \
      ~{jan_novar_cli} \
      ~{download} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jannovar-cli:0.35--0"
  }
  parameter_meta {
    s: ""
    d: ""
    jan_novar_cli: ""
    download: ""
  }
  output {
    File out_stdout = stdout()
  }
}