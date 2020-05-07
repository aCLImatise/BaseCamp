version 1.0

task BFst {
  input {
    String yourYour
  }
  command <<<
    bFst \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}