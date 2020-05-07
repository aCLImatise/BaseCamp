version 1.0

task FastTreeMP {
  input {
    String expertExpert
  }
  command <<<
    FastTreeMP \
      ~{if defined(expertExpert) then ("-expert " +  '"' + expertExpert + '"') else ""}
  >>>
}