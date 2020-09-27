version 1.0

task CpinsimParse {
  input {
    Array[String] interactions_without_constraints
    Array[String] competitions
    Array[String] allosteric_effects
    File? output_file_containing
  }
  command <<<
    cpinsim parse \
      ~{if defined(interactions_without_constraints) then ("--interactions_without_constraints " +  '"' + interactions_without_constraints + '"') else ""} \
      ~{if defined(competitions) then ("--competitions " +  '"' + competitions + '"') else ""} \
      ~{if defined(allosteric_effects) then ("--allosteric_effects " +  '"' + allosteric_effects + '"') else ""} \
      ~{if defined(output_file_containing) then ("--output " +  '"' + output_file_containing + '"') else ""}
  >>>
  parameter_meta {
    interactions_without_constraints: "Files containing the annotated pairwise interactions."
    competitions: "Files containing the annotated competitions."
    allosteric_effects: "Files containing the annotated allosteric effects."
    output_file_containing: "Output file containing the parsed proteins.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_containing = "${in_output_file_containing}"
  }
}