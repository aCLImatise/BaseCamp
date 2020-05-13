version 1.0

task AC {
  input {
    File rR
  }
  command <<<
    AC \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}