version 1.0

task FcDedupATigs {
  input {
    Int? max_aln_cov
    Int? max_idt
  }
  command <<<
    fc_dedup_a_tigs \
      ~{if defined(max_aln_cov) then ("--max_aln_cov " +  '"' + max_aln_cov + '"') else ""} \
      ~{if defined(max_idt) then ("--max_idt " +  '"' + max_idt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_aln_cov: ""
    max_idt: ""
  }
  output {
    File out_stdout = stdout()
  }
}