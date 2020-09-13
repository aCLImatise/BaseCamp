version 1.0

task Menecof {
  input {
    String? draft_net
    String? seeds
    String? targets
    File? cofactors
    String? suffix
    Boolean? weight
    Boolean? enumerate
  }
  command <<<
    menecof \
      ~{if defined(draft_net) then ("--draftnet " +  '"' + draft_net + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(cofactors) then ("--cofactors " +  '"' + cofactors + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (weight) then "--weight" else ""} \
      ~{if (enumerate) then "--enumerate" else ""}
  >>>
  parameter_meta {
    draft_net: "metabolic network in SBML format"
    seeds: "seeds in SBML format"
    targets: "targets in SBML format"
    cofactors: "cofactors, in one-per-line text file format"
    suffix: "suffix to be added to the compounds of the database.\\nIt can be the suffix for the cytosolic compartment or\\nexternal one. Cytosolic one is prefered to ensure the\\nimpact of the added cofactors. Default = None"
    weight: "call this option if cofactors are weighted according\\nto their occurrence frequency in database. If so,\\ncofactors file must be tabulated with per line\\ncompound' 'occurrence"
    enumerate: "enumerates all cofactors solutions"
  }
  output {
    File out_stdout = stdout()
  }
}