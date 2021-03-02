version 1.0

task Opsin {
  input {
    Boolean? allow_acids_without_acid
    Boolean? detailed_failure_analysis
    Boolean? name
    String? sets_opsins_format
    Boolean? allow_radicals
    Boolean? allow_uninterpretable_stereo
    Boolean? verbose
    Boolean? wildcard_radicals
    Int? jar
    String java
  }
  command <<<
    opsin \
      ~{java} \
      ~{if (allow_acids_without_acid) then "--allowAcidsWithoutAcid" else ""} \
      ~{if (detailed_failure_analysis) then "--detailedFailureAnalysis" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if defined(sets_opsins_format) then ("--output " +  '"' + sets_opsins_format + '"') else ""} \
      ~{if (allow_radicals) then "--allowRadicals" else ""} \
      ~{if (allow_uninterpretable_stereo) then "--allowUninterpretableStereo" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (wildcard_radicals) then "--wildcardRadicals" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    allow_acids_without_acid: "Allows interpretation of acids without\\nthe word acid e.g. \\\"acetic\\\""
    detailed_failure_analysis: "Enables reverse parsing to more\\naccurately determine why parsing failed"
    name: "Include name in SMILES/InChI output\\n(tab delimited)"
    sets_opsins_format: "Sets OPSIN's output format (default\\nsmi)\\nAllowed values are:\\ncml for Chemical Markup Language\\nsmi for SMILES\\nextendedsmi for Extended SMILES\\ninchi for InChI (with FixedH)\\nstdinchi for StdInChI\\nstdinchikey for StdInChIKey"
    allow_radicals: "Enables interpretation of radicals"
    allow_uninterpretable_stereo: "Allows stereochemistry uninterpretable\\nby OPSIN to be ignored"
    verbose: "Enables debugging"
    wildcard_radicals: "Radicals are output as wildcard atoms"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}