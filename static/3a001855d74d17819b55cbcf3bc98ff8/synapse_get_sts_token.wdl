version 1.0

task SynapseGetststoken {
  input {
    String? var_output
  }
  command <<<
    synapse get_sts_token \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}