version 1.0

task IndexPfamDomainInfopl {
  command <<<
    index_pfam_domain_info_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}