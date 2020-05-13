version 1.0

task PlanemoOpenOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    planemo open OPTIONS \
      ~{pathPath}
  >>>
}