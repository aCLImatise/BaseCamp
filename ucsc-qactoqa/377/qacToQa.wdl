version 1.0

task QacToQa {
  input {
    String? name
  }
  command <<<
    qacToQa \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    name: "restrict output to just this sequence name"
  }
  output {
    File out_stdout = stdout()
  }
}