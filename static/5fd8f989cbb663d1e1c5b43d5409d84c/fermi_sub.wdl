version 1.0

task FermiSub {
  input {
    Boolean cC
    String tT
    String? inInFmd
    String? arrayArrayBits
  }
  command <<<
    fermi sub \
      ~{inInFmd} \
      ~{true="-c" false="" cC} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{arrayArrayBits}
  >>>
}