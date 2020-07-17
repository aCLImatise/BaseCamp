version 1.0

task Metaxa2 {
  input {
    String? i
    String? o
    String? cpu
  }
  command <<<
    metaxa2 \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    cpu: ""
  }
}