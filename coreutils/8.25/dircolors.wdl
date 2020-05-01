version 1.0

task Dircolors {
  input {
    String bourneBourneShell
    String cCShell
    String printPrintDatabase
  }
  command <<<
    dircolors \
      ~{if defined(bourneBourneShell) then ("--bourne-shell " +  '"' + bourneBourneShell + '"') else ""} \
      ~{if defined(cCShell) then ("--c-shell " +  '"' + cCShell + '"') else ""} \
      ~{if defined(printPrintDatabase) then ("--print-database " +  '"' + printPrintDatabase + '"') else ""}
  >>>
}