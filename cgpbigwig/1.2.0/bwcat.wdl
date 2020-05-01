version 1.0

task Bwcat {
  input {
    String iI
  }
  command <<<
    bwcat \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}