version 1.0

task Tensorboard {
  input {
    String reloadReloadInterval
  }
  command <<<
    tensorboard \
      ~{if defined(reloadReloadInterval) then ("--reload_interval " +  '"' + reloadReloadInterval + '"') else ""}
  >>>
}