version 1.0

task Pynnotator {
  input {
    Int? b
    String? i
  }
  command <<<
    pynnotator \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}