version 1.0

task GapShifter {
  input {
    String var_0
    String var_1
  }
  command <<<
    gapShifter \
      ~{var_0} \
      ~{var_1}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
  }
}