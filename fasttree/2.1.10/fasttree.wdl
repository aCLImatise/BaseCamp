version 1.0

task Fasttree {
  input {
    String expertExpert
  }
  command <<<
    fasttree \
      ~{if defined(expertExpert) then ("-expert " +  '"' + expertExpert + '"') else ""}
  >>>
}