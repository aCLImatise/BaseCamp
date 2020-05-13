version 1.0

task FindTcovSnp {
  input {
    Boolean ambAmb
    Boolean minMinQv
    String minMinSnp
    Boolean qvsQvs
  }
  command <<<
    findTcovSnp \
      ~{true="-amb" false="" ambAmb} \
      ~{true="-minqv" false="" minMinQv} \
      ~{if defined(minMinSnp) then ("-minsnp " +  '"' + minMinSnp + '"') else ""} \
      ~{true="-qvs" false="" qvsQvs}
  >>>
}