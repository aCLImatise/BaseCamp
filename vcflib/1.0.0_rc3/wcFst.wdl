version 1.0

task WcFst {
  input {
    String yourYour
  }
  command <<<
    wcFst \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}