version 1.0

task BuildLmerTable {
  input {
    String tandemTandem
    Boolean minMin
    Boolean vV
  }
  command <<<
    build_lmer_table \
      ~{if defined(tandemTandem) then ("-tandem " +  '"' + tandemTandem + '"') else ""} \
      ~{true="-min" false="" minMin} \
      ~{true="-v" false="" vV}
  >>>
}