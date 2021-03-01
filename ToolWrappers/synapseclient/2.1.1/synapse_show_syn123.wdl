version 1.0

task SynapseShowSyn123 {
  input {
    String? p
    String? u
    String synapse
  }
  command <<<
    synapse show syn123 \
      ~{synapse} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""}
  >>>
  runtime {
    docker: "None"
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