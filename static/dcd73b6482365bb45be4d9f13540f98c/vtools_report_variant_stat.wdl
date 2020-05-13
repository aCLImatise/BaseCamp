version 1.0

task VtoolsReportVariantStat {
  input {
    Boolean sS
    Boolean gG
    Boolean vV
    String? tableTable
  }
  command <<<
    vtools_report variant_stat \
      ~{tableTable} \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-v" false="" vV}
  >>>
}