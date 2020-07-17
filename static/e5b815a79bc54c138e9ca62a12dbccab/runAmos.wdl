version 1.0

task RunAmos {
  input {
    String? c
  }
  command <<<
    runAmos \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    c: ""
  }
}