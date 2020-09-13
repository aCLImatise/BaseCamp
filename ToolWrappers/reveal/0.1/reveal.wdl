version 1.0

task Reveal {
  input {
    String? h
    String usage
  }
  command <<<
    reveal \
      ~{usage} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    h: ""
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}