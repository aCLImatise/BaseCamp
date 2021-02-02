version 1.0

task Pandocciteproc {
  input {
    Boolean? man
    Boolean? license
    Boolean? _version_show
    Boolean? _bibyaml_convert
    Boolean? _bibjson_convert
    String? format
    File? file_dot_dot
  }
  command <<<
    pandoc_citeproc \
      ~{file_dot_dot} \
      ~{if (man) then "--man" else ""} \
      ~{if (license) then "--license" else ""} \
      ~{if (_version_show) then "-V" else ""} \
      ~{if (_bibyaml_convert) then "-y" else ""} \
      ~{if (_bibjson_convert) then "-j" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    man: "print man page to stdout"
    license: "print license to stdout"
    _version_show: "--version        show program version"
    _bibyaml_convert: "--bib2yaml       convert bibliography to YAML"
    _bibjson_convert: "--bib2json       convert bibliography to JSON"
    format: "bibliography format"
    file_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}