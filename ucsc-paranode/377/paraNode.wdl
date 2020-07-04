version 1.0

task ParaNode {
  input {
    String? cpu
    String start
  }
  command <<<
    paraNode \
      ~{start} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""}
  >>>
  parameter_meta {
    cpu: "Number of CPUs to use - default 1."
    start: ""
  }
}