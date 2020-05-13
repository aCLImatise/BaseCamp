version 1.0

task PFst {
  input {
    String yourYour
  }
  command <<<
    pFst \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}