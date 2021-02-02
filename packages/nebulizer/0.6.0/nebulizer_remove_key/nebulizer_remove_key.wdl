version 1.0

task NebulizerRemoveKey {
  input {
    String var_alias
  }
  command <<<
    nebulizer remove_key \
      ~{var_alias}
  >>>
  parameter_meta {
    var_alias: ""
  }
  output {
    File out_stdout = stdout()
  }
}