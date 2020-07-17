version 1.0

task QacToQa {
  input {
    String? name
    String in_dot_qac
    String out_dot_qa
  }
  command <<<
    qacToQa \
      ~{in_dot_qac} \
      ~{out_dot_qa} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    name: "restrict output to just this sequence name"
    in_dot_qac: ""
    out_dot_qa: ""
  }
}