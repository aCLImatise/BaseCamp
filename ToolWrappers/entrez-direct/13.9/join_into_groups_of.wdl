version 1.0

task Joinintogroupsof {
  input {
    Boolean? null
    Boolean? interactive
    Boolean? zero_pr_tx
    String xargs
  }
  command <<<
    join_into_groups_of \
      ~{xargs} \
      ~{if (null) then "--null" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (zero_pr_tx) then "-0prtx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    null: ""
    interactive: ""
    zero_pr_tx: ""
    xargs: ""
  }
  output {
    File out_stdout = stdout()
  }
}