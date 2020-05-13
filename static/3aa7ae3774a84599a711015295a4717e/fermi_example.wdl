version 1.0

task FermiExample {
  input {
    Boolean ceuCeu
    String kK
    String lL
    String? inInFq
  }
  command <<<
    fermi example \
      ~{inInFq} \
      ~{true="-ceU" false="" ceuCeu} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}