version 1.0

task RRA {
  input {
    String? i
  }
  command <<<
    RRA \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
  }
}