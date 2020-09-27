version 1.0

task Menecheck {
  input {
    String? draft_net
    String? seeds
    String? targets
  }
  command <<<
    menecheck \
      ~{if defined(draft_net) then ("--draftnet " +  '"' + draft_net + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""}
  >>>
  parameter_meta {
    draft_net: "metabolic network in SBML format"
    seeds: "seeds in SBML format"
    targets: "targets in SBML format\\n"
  }
  output {
    File out_stdout = stdout()
  }
}