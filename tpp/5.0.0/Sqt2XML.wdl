version 1.0

task Sqt2XML {
  input {
    String eE
  }
  command <<<
    Sqt2XML \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""}
  >>>
}