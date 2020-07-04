version 1.0

task Adt {
  input {
    String pm_v
  }
  command <<<
    adt \
      ~{pm_v}
  >>>
  parameter_meta {
    pm_v: ""
  }
}