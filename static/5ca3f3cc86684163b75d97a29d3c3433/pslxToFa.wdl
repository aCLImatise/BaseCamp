version 1.0

task PslxToFa {
  input {
    String? lift_target
    String in_dot_psl
  }
  command <<<
    pslxToFa \
      ~{in_dot_psl} \
      ~{if defined(lift_target) then ("-liftTarget " +  '"' + lift_target + '"') else ""}
  >>>
  parameter_meta {
    lift_target: "-liftQuery=liftQuery.lft\\n"
    in_dot_psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}