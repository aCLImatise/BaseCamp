version 1.0

task Yaggo {
  input {
    File? output_file
    File? license
    Boolean? man
    Boolean? stub
    File? zc
    Boolean? extended_syntax
    Boolean? debug
  }
  command <<<
    yaggo \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(license) then ("--license " +  '"' + license + '"') else ""} \
      ~{true="--man" false="" man} \
      ~{true="--stub" false="" stub} \
      ~{if defined(zc) then ("--zc " +  '"' + zc + '"') else ""} \
      ~{true="--extended-syntax" false="" extended_syntax} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    output_file: "Output file"
    license: "License file to copy in header"
    man: "[FILE]                 Display or write manpage"
    stub: "Output a stub yaggo file"
    zc: "Write zsh completion file"
    extended_syntax: "Use extended syntax"
    debug: "Debug yaggo"
  }
}