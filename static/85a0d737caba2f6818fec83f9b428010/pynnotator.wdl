version 1.0

task Pynnotator {
  input {
    String? i
    String? b
  }
  command <<<
    pynnotator \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    b: ""
  }
}