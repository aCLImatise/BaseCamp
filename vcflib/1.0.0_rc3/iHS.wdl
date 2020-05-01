version 1.0

task IHS {
  input {
    String yourYour
    String? ihsIhs
  }
  command <<<
    iHS \
      ~{ihsIhs} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}