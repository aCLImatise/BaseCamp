version 1.0

task SynapseCat {
  input {
    String? v
  }
  command <<<
    synapse cat \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}