version 1.0

task Fexact {
  input {
    String i
    String j
    String k
    String l
  }
  command <<<
    Fexact \
      ~{i} \
      ~{j} \
      ~{k} \
      ~{l}
  >>>
  parameter_meta {
    i: ""
    j: ""
    k: ""
    l: ""
  }
  output {
    File out_stdout = stdout()
  }
}