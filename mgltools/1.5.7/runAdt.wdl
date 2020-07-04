version 1.0

task RunAdt {
  input {
    String pm_v
  }
  command <<<
    runAdt \
      ~{pm_v}
  >>>
  parameter_meta {
    pm_v: ""
  }
}