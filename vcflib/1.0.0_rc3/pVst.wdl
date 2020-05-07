version 1.0

task PVst {
  input {
    String yourYour
  }
  command <<<
    pVst \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}