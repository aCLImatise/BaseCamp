version 1.0

task SynapseQuery {
  input {
    String? p
    String? u
    String synapse
  }
  command <<<
    synapse query \
      ~{synapse} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    p: ""
    u: ""
    synapse: ""
  }
  output {
    File out_stdout = stdout()
  }
}