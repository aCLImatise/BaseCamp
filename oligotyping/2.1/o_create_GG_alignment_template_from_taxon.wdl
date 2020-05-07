version 1.0

task OCreateGGAlignmentTemplateFromTaxon {
  input {
    String outputOutput
    String? taxTaxOn
    String? otuOtuIdToGreenGenes
    String? greenGreenGenesAlignment
  }
  command <<<
    o-create-GG-alignment-template-from-taxon \
      ~{taxTaxOn} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{otuOtuIdToGreenGenes} \
      ~{greenGreenGenesAlignment}
  >>>
}