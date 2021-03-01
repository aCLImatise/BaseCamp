version 1.0

task Menecopy {
  input {
    String? draft_net
    String? seeds
    String? targets
    String? repair_net
    Boolean? enumerate
  }
  command <<<
    meneco_py \
      ~{if defined(draft_net) then ("--draftnet " +  '"' + draft_net + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(repair_net) then ("--repairnet " +  '"' + repair_net + '"') else ""} \
      ~{if (enumerate) then "--enumerate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    draft_net: "metabolic network in SBML format"
    seeds: "seeds in SBML format"
    targets: "targets in SBML format"
    repair_net: "perform network completion using REPAIRNET a metabolic\\nnetwork in SBML format"
    enumerate: "enumerate all minimal completions"
  }
  output {
    File out_stdout = stdout()
  }
}