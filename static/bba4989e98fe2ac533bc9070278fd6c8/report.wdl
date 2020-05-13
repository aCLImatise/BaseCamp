version 1.0

task Report.pl {
  input {
    String? perlPerl
    String? reportReportPl
    String? taxprof1Taxprof1
    String? mergeMerge
    String? multipleMultiple
    String? taxonomyTaxonomy
    String? profileProfile
    File? filesFiles
    Int? intoInto
    String? oneOne
    String? tableTable
  }
  command <<<
    report.pl \
      ~{perlPerl} \
      ~{reportReportPl} \
      ~{taxprof1Taxprof1} \
      ~{mergeMerge} \
      ~{multipleMultiple} \
      ~{taxonomyTaxonomy} \
      ~{profileProfile} \
      ~{filesFiles} \
      ~{intoInto} \
      ~{oneOne} \
      ~{tableTable}
  >>>
}