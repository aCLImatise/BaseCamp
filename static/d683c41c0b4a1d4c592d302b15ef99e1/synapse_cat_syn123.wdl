version 1.0

task SynapseCatSyn123 {
  input {
    String? p
    String? u
    String synapse
  }
  command <<<
    synapse cat syn123 \
      ~{synapse} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0"
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