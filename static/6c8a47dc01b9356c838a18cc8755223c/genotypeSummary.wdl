version 1.0

task GenotypeSummary {
  input {
    String yourYour
    String yourYour
    String yourYour
  }
  command <<<
    genotypeSummary \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}