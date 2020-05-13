version 1.0

task DomainsMergeToBed.pl {
  input {
    String? chr1Chr1
    String? chr2Chr2
    String? chr3Chr3
  }
  command <<<
    domainsMergeToBed.pl \
      ~{chr1Chr1} \
      ~{chr2Chr2} \
      ~{chr3Chr3}
  >>>
}