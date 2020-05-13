version 1.0

task RevFasta {
  input {
    String iI
  }
  command <<<
    revFasta \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}