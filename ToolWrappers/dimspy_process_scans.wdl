version 1.0

task DimspyProcessscans {
  input {
    Boolean? m
    File? l
    String? o
    String? i
  }
  command <<<
    dimspy process_scans \
      ~{if (m) then "-m" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    l: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}