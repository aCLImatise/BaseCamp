version 1.0

task PopStats {
  input {
    String yourYour
    String yourYour
    String yourYour
  }
  command <<<
    popStats \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}