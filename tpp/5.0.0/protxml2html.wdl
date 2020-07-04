version 1.0

task Protxml2html.pl {
  input {
    String? file
    String? format
  }
  command <<<
    protxml2html.pl \
      ~{format} \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: ""
    format: ""
  }
}