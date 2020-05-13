version 1.0

task JassListPhenotypes {
  input {
    String inInItTablePath
  }
  command <<<
    jass list-phenotypes \
      ~{if defined(inInItTablePath) then ("--init-table-path " +  '"' + inInItTablePath + '"') else ""}
  >>>
}