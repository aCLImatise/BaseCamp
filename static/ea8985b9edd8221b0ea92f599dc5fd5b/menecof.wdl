version 1.0

task Menecof {
  input {
    String? draft_net
    String? seeds
    String? targets
    String? cofactors
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
      ~{true="--weight" false="" weight} \
      ~{true="--enumerate" false="" enumerate}
  >>>
  parameter_meta {
    draft_net: "metabolic network in SBML format"
    seeds: "seeds in SBML format"
    targets: "targets in SBML format"
    cofactors: "cofactors, in one-per-line text file format"
    suffix: "suffix to be added to the compounds of the database. It can be the suffix for the cytosolic compartment or external one. Cytosolic one is prefered to ensure the impact of the added cofactors. Default = None"
    weight: "call this option if cofactors are weighted according to their occurrence frequency in database. If so, cofactors file must be tabulated with per line compound' 'occurrence"
    enumerate: "enumerates all cofactors solutions"
  }
}