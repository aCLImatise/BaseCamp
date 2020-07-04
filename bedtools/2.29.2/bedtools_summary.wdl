version 1.0

task BedtoolsSummary {
  input {
    String? i
    String? g
  }
  command <<<
    bedtools summary \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    g: ""
  }
}