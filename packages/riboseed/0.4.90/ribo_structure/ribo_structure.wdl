version 1.0

task RiboStructure {
  input {
    String? k
    String? g
    String? o
  }
  command <<<
    ribo structure \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    k: ""
    g: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}