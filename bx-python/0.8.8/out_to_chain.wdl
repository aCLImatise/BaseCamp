version 1.0

task OutToChain.py {
  input {
    String speciesSpecies
    String chrChrSizes
    File outputOutput
    String? inputInput
  }
  command <<<
    out_to_chain.py \
      ~{inputInput} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(chrChrSizes) then ("--chrsizes " +  '"' + chrChrSizes + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}