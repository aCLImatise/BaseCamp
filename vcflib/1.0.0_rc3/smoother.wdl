version 1.0

task Smoother {
  input {
    String yourYour
  }
  command <<<
    smoother \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}