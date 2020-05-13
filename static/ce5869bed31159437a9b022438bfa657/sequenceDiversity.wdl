version 1.0

task SequenceDiversity {
  input {
    String yourYour
  }
  command <<<
    sequenceDiversity \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}