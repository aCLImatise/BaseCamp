version 1.0

task Tensorboard {
  input {
    String? reload_interval
    String? logdir
    Boolean? var_2
    Boolean? no_debug
    String? var_4
  }
  command <<<
    tensorboard \
      ~{var_4} \
      ~{if defined(reload_interval) then ("--reload_interval " +  '"' + reload_interval + '"') else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""} \
      ~{true="--debug" false="" var_2} \
      ~{true="--nodebug" false="" no_debug}
  >>>
  parameter_meta {
    reload_interval: "How often the backend should load more data."
    logdir: ""
    var_2: ""
    no_debug: ""
    var_4: ""
  }
}