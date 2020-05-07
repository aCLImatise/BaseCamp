version 1.0

task Frgs2clones {
  input {
    String gG
    Boolean cC
    Boolean nN
    Boolean uU
  }
  command <<<
    frgs2clones \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{true="-N" false="" nN} \
      ~{true="-U" false="" uU}
  >>>
}