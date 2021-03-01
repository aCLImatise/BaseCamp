version 1.0

task SynapseGetststokenId {
  input {
    String? o
    String synapse
    String get_sts_token
  }
  command <<<
    synapse get_sts_token id \
      ~{synapse} \
      ~{get_sts_token} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    synapse: ""
    get_sts_token: ""
  }
  output {
    File out_stdout = stdout()
  }
}