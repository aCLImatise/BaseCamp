version 1.0

task FasttreeMP {
  input {
    String expertExpert
  }
  command <<<
    fasttreeMP \
      ~{if defined(expertExpert) then ("-expert " +  '"' + expertExpert + '"') else ""}
  >>>
}