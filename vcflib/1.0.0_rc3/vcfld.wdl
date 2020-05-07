version 1.0

task Vcfld {
  input {
    String yourYour
  }
  command <<<
    vcfld \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}