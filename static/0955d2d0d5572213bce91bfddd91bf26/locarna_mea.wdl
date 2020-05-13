version 1.0

task LocarnaMea.pl {
  input {
    String manMan
    String? locaLocaRnaMeA
    String? inInFilePp
  }
  command <<<
    locarna-mea.pl \
      ~{locaLocaRnaMeA} \
      ~{if defined(manMan) then ("--man " +  '"' + manMan + '"') else ""} \
      ~{inInFilePp}
  >>>
}