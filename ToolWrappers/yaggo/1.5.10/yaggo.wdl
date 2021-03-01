version 1.0

task Yaggo {
  input {
    File? output_file
    File? license
    Boolean? man
    File? stub
    File? zc
    Boolean? extended_syntax
    Boolean? debug
  }
  command <<<
    yaggo \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(license) then ("--license " +  '"' + license + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (stub) then "--stub" else ""} \
      ~{if defined(zc) then ("--zc " +  '"' + zc + '"') else ""} \
      ~{if (extended_syntax) then "--extended-syntax" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "Output file"
    license: "License file to copy in header"
    man: "[FILE]                 Display or write manpage"
    stub: "Output a stub yaggo file"
    zc: "Write zsh completion file"
    extended_syntax: "Use extended syntax"
    debug: "Debug yaggo"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_stub = "${in_stub}"
  }
}