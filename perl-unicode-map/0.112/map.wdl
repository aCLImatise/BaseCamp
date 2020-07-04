version 1.0

task Map {
  input {
    String? from
    Boolean? list
    Boolean? to
  }
  command <<<
    map \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{true="--to" false="" to}
  >>>
  parameter_meta {
    from: "Encoding of input files (default \"ISO-8859-1\")"
    list: "Lists available character sets and their alias names."
    to: "s  Encoding of output files (default \"ISO-8859-1\")"
  }
}