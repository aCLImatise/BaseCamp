version 1.0

task FastTree {
  input {
    String expertExpert
  }
  command <<<
    FastTree \
      ~{if defined(expertExpert) then ("-expert " +  '"' + expertExpert + '"') else ""}
  >>>
}