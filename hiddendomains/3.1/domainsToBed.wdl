version 1.0

task DomainsToBed.pl {
  input {
    String? chr1Chr1
    String? chr2Chr2
    String? chr3Chr3
  }
  command <<<
    domainsToBed.pl \
      ~{chr1Chr1} \
      ~{chr2Chr2} \
      ~{chr3Chr3}
  >>>
}