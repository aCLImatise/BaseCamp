version 1.0

task Menepath {
  input {
    String? draft_net
    String? seeds
    String? targets
    Boolean? min
    Boolean? enumerate
  }
  command <<<
    menepath \
      ~{if defined(draft_net) then ("--draftnet " +  '"' + draft_net + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{true="--min" false="" min} \
      ~{true="--enumerate" false="" enumerate}
  >>>
  parameter_meta {
    draft_net: "metabolic network in SBML format"
    seeds: "seeds in SBML format"
    targets: "targets in SBML format"
    min: "call this option to obtain minimal-size paths"
    enumerate: "call this option for an enumeration of solutions"
  }
}