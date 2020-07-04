version 1.0

task Simulate.py {
  input {
    String? copy
    String? ins
    String? dele
    String? sub
    String simple
    String error
    String simulation
  }
  command <<<
    simulate.py \
      ~{simple} \
      ~{error} \
      ~{simulation} \
      ~{if defined(copy) then ("--copy " +  '"' + copy + '"') else ""} \
      ~{if defined(ins) then ("--ins " +  '"' + ins + '"') else ""} \
      ~{if defined(dele) then ("--dele " +  '"' + dele + '"') else ""} \
      ~{if defined(sub) then ("--sub " +  '"' + sub + '"') else ""}
  >>>
  parameter_meta {
    copy: "Number of copies to simulate per input sequence (default: 1)"
    ins: "Insert error rate [0-1] (default: 0)"
    dele: "Deletion error rate [0-1] (default: 0)"
    sub: "Substitution error rate [0-1] (default: 0)"
    simple: ""
    error: ""
    simulation: ""
  }
}