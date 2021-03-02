version 1.0

task Menescope {
  input {
    String? draft_net
    String? seeds
  }
  command <<<
    menescope \
      ~{if defined(draft_net) then ("--draftnet " +  '"' + draft_net + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    draft_net: "metabolic network in SBML format"
    seeds: "seeds in SBML format\\n"
  }
  output {
    File out_stdout = stdout()
  }
}