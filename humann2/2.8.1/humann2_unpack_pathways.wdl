version 1.0

task Humann2UnpackPathways {
  input {
    String inputInputGenes
    String inputInputPathways
    String geneGeneMapping
    File pathwayPathwayMapping
    Boolean removeRemoveTaxonomy
    String outputOutput
  }
  command <<<
    humann2_unpack_pathways \
      ~{if defined(inputInputGenes) then ("--input-genes " +  '"' + inputInputGenes + '"') else ""} \
      ~{if defined(inputInputPathways) then ("--input-pathways " +  '"' + inputInputPathways + '"') else ""} \
      ~{if defined(geneGeneMapping) then ("--gene-mapping " +  '"' + geneGeneMapping + '"') else ""} \
      ~{if defined(pathwayPathwayMapping) then ("--pathway-mapping " +  '"' + pathwayPathwayMapping + '"') else ""} \
      ~{true="--remove-taxonomy" false="" removeRemoveTaxonomy} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}