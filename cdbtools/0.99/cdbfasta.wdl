version 1.0

task Cdbfasta {
  input {
    String vV
  }
  command <<<
    cdbfasta \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}