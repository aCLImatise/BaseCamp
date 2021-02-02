version 1.0

task SummDomainIdentpl {
  command <<<
    summ_domain_ident_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}