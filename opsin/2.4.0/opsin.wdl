version 1.0

task Opsin {
  input {
    Boolean? allow_acids_without_acid
    Boolean? detailed_failure_analysis
    Boolean? name
    String? sets_opsins_output
    Boolean? allow_radicals
    Boolean? allow_uninterpretable_stereo
    Boolean? verbose
    Boolean? wildcard_radicals
    String? jar
    String java
  }
  command <<<
    opsin \
      ~{java} \
      ~{true="--allowAcidsWithoutAcid" false="" allow_acids_without_acid} \
      ~{true="--detailedFailureAnalysis" false="" detailed_failure_analysis} \
      ~{true="--name" false="" name} \
      ~{if defined(sets_opsins_output) then ("--output " +  '"' + sets_opsins_output + '"') else ""} \
      ~{true="--allowRadicals" false="" allow_radicals} \
      ~{true="--allowUninterpretableStereo" false="" allow_uninterpretable_stereo} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--wildcardRadicals" false="" wildcard_radicals} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    allow_acids_without_acid: "Allows interpretation of acids without the word acid e.g. \"acetic\""
    detailed_failure_analysis: "Enables reverse parsing to more accurately determine why parsing failed"
    name: "Include name in SMILES/InChI output (tab delimited)"
    sets_opsins_output: "Sets OPSIN's output format (default smi) Allowed values are: cml for Chemical Markup Language smi for SMILES extendedsmi for Extended SMILES inchi for InChI (with FixedH) stdinchi for StdInChI stdinchikey for StdInChIKey"
    allow_radicals: "Enables interpretation of radicals"
    allow_uninterpretable_stereo: "Allows stereochemistry uninterpretable by OPSIN to be ignored"
    verbose: "Enables debugging"
    wildcard_radicals: "Radicals are output as wildcard atoms"
    jar: ""
    java: ""
  }
}