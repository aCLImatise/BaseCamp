version 1.0

task Allegro {
  input {
    String lL
    Boolean tT
    Boolean nN
    Boolean mM
    String? optionsOptionsFile
  }
  command <<<
    allegro \
      ~{optionsOptionsFile} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-n" false="" nN} \
      ~{true="-m" false="" mM}
  >>>
}