version 1.0

task PslxToFa {
  input {
    String? lift_target
    String? lift_query
    String in_dot_psl
  }
  command <<<
    pslxToFa \
      ~{in_dot_psl} \
      ~{if defined(lift_target) then ("-liftTarget " +  '"' + lift_target + '"') else ""} \
      ~{if defined(lift_query) then ("-liftQuery " +  '"' + lift_query + '"') else ""}
  >>>
  parameter_meta {
    lift_target: ""
    lift_query: ""
    in_dot_psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}