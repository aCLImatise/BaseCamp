version 1.0

task EnsemblExtractProteinCodingExonAnnotations.py {
  input {
    String annotationAnnotationFile
    String outputOutputFile
    String speciesSpecies
    String chromosomeChromosomePattern
    String fieldFieldName
    File logLogFile
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    ensembl_extract_protein_coding_exon_annotations.py \
      ~{if defined(annotationAnnotationFile) then ("--annotation-file " +  '"' + annotationAnnotationFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(chromosomeChromosomePattern) then ("--chromosome-pattern " +  '"' + chromosomeChromosomePattern + '"') else ""} \
      ~{if defined(fieldFieldName) then ("--field-name " +  '"' + fieldFieldName + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}