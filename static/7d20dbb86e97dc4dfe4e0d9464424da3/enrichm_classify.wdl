version 1.0

task EnrichmClassify {
  input {
    String logLog
    String verbosityVerbosity
    String outputOutput
    Boolean forceForce
    String genomeGenomeAndAnnotationFile
    String genomeGenomeAndAnnotationMatrix
    String customCustomModules
    String cutCutOff
    Boolean aggregateAggregate
  }
  command <<<
    enrichm classify \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(genomeGenomeAndAnnotationFile) then ("--genome_and_annotation_file " +  '"' + genomeGenomeAndAnnotationFile + '"') else ""} \
      ~{if defined(genomeGenomeAndAnnotationMatrix) then ("--genome_and_annotation_matrix " +  '"' + genomeGenomeAndAnnotationMatrix + '"') else ""} \
      ~{if defined(customCustomModules) then ("--custom_modules " +  '"' + customCustomModules + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--aggregate" false="" aggregateAggregate}
  >>>
}