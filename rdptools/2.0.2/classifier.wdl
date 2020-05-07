version 1.0

task Classifier {
  input {
    String bootstrapBootstrapOutfile
    String confConf
    String metadataMetadata
    String formatFormat
    String geneGene
    String hierHierOutfile
    String biomBiomFile
    String outputOutputFile
    Boolean queryQueryFile
    String shortShortSeqOutfile
    String trainTrainPropFile
    String minMinWords
  }
  command <<<
    classifier \
      ~{if defined(bootstrapBootstrapOutfile) then ("--bootstrap_outfile " +  '"' + bootstrapBootstrapOutfile + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(hierHierOutfile) then ("--hier_outfile " +  '"' + hierHierOutfile + '"') else ""} \
      ~{if defined(biomBiomFile) then ("--biomFile " +  '"' + biomBiomFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputFile " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--queryFile" false="" queryQueryFile} \
      ~{if defined(shortShortSeqOutfile) then ("--shortseq_outfile " +  '"' + shortShortSeqOutfile + '"') else ""} \
      ~{if defined(trainTrainPropFile) then ("--train_propfile " +  '"' + trainTrainPropFile + '"') else ""} \
      ~{if defined(minMinWords) then ("--minWords " +  '"' + minMinWords + '"') else ""}
  >>>
}