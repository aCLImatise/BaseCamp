version 1.0

task SummDomainIdentpl {
  command <<<
    summ_domain_ident_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}