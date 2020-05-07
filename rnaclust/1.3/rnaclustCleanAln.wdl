version 1.0

task RnaclustCleanAln.pl {
  input {
    String? rnaRnaClustGenReportPl
    String? dirDir
  }
  command <<<
    rnaclustCleanAln.pl \
      ~{rnaRnaClustGenReportPl} \
      ~{dirDir}
  >>>
}