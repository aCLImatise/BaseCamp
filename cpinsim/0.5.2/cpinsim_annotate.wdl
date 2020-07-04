version 1.0

task CpinsimAnnotate {
  input {
    Array[File] interactions_without_constraints
    Array[File] competitions
    Array[File] allosteric_effects
    Boolean? extended_inference
    File? output_interactions
    File? output_competitions
    File? output_allosteric_s
  }
  command <<<
    cpinsim annotate \
      ~{if defined(interactions_without_constraints) then ("--interactions_without_constraints " +  '"' + interactions_without_constraints + '"') else ""} \
      ~{if defined(competitions) then ("--competitions " +  '"' + competitions + '"') else ""} \
      ~{if defined(allosteric_effects) then ("--allosteric_effects " +  '"' + allosteric_effects + '"') else ""} \
      ~{true="--extended_inference" false="" extended_inference} \
      ~{if defined(output_interactions) then ("--output_interactions " +  '"' + output_interactions + '"') else ""} \
      ~{if defined(output_competitions) then ("--output_competitions " +  '"' + output_competitions + '"') else ""} \
      ~{if defined(output_allosteric_s) then ("--output_allosterics " +  '"' + output_allosteric_s + '"') else ""}
  >>>
  parameter_meta {
    interactions_without_constraints: "Files containing the underlying network: pairwise interactions without constraints. Two columns InteractorA | InteractorB"
    competitions: "Files containing the competitions. Two columns: Host | Competitors (comma separated)"
    allosteric_effects: "Files containing the allosteric effects. Four columns: Host | Interactor | Activator | Inhibitor"
    extended_inference: "Extended inference for missing domains in competitions."
    output_interactions: "One output file containing all annotated pairwise interactions."
    output_competitions: "One output file containing all annotated competitions."
    output_allosteric_s: "One output file containing all annotated allosteric effects."
  }
}