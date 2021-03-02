version 1.0

task Simulatepy {
  input {
    String? dele
    String? ins
    String? copy
    String simple
    String error
    String simulation
  }
  command <<<
    simulate_py \
      ~{simple} \
      ~{error} \
      ~{simulation} \
      ~{if defined(dele) then ("--dele " +  '"' + dele + '"') else ""} \
      ~{if defined(ins) then ("--ins " +  '"' + ins + '"') else ""} \
      ~{if defined(copy) then ("--copy " +  '"' + copy + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dele: ""
    ins: ""
    copy: ""
    simple: ""
    error: ""
    simulation: ""
  }
  output {
    File out_stdout = stdout()
  }
}