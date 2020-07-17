version 1.0

task RunMetaphyler.pl {
  input {
    String query
    String blast
    String prefix
  }
  command <<<
    runMetaphyler.pl \
      ~{query} \
      ~{blast} \
      ~{prefix}
  >>>
  parameter_meta {
    query: ""
    blast: ""
    prefix: ""
  }
}