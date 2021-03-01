version 1.0

task Pandocciteproc {
  input {
    Boolean? man
    Boolean? license
    Boolean? bib_two_yaml
    Boolean? bib_two_json
    String? format
    File? file_dot_dot
  }
  command <<<
    pandoc_citeproc \
      ~{file_dot_dot} \
      ~{if (man) then "--man" else ""} \
      ~{if (license) then "--license" else ""} \
      ~{if (bib_two_yaml) then "--bib2yaml" else ""} \
      ~{if (bib_two_json) then "--bib2json" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "print man page to stdout"
    license: "print license to stdout"
    bib_two_yaml: "convert bibliography to YAML"
    bib_two_json: "convert bibliography to JSON"
    format: "bibliography format"
    file_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}