version 1.0

task Map {
  input {
    Int? from
    Boolean? list
    Boolean? to
  }
  command <<<
    map \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (to) then "--to" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    from: "Encoding of input files (default \\\"ISO-8859-1\\\")"
    list: "Lists available character sets and their alias names."
    to: "s  Encoding of output files (default \\\"ISO-8859-1\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}