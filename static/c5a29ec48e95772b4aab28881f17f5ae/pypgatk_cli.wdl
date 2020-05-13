version 1.0

task PypgatkCli.pyVcfToProteindb {
  input {
    String configConfigFile
    String inputInputFastA
    String vepVepAnnotatedVcf
    String geneGeneAnnotationsGtf
    Int translationTranslationTable
    Int miMiToTranslationTable
    String varVarPrefix
    Boolean reportReportRefSeq
    String outputOutputProteinDb
    String annotationAnnotationFieldName
    String afAfField
    Float afAfThreshold
    Int transcriptTranscriptIndex
    Int consequenceConsequenceIndex
    String excludeExcludeBiotypes
    String excludeExcludeConsequences
    Boolean skipSkipIncludingAllCds
    String includeIncludeBiotypes
    String includeIncludeConsequences
    String biotypeBiotypeStr
    Boolean ignoreIgnoreFilters
    String acceptedAcceptedFilters
    String? optionsOptions
  }
  command <<<
    pypgatk_cli.py vcf-to-proteindb \
      ~{optionsOptions} \
      ~{if defined(configConfigFile) then ("--config_file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(inputInputFastA) then ("--input_fasta " +  '"' + inputInputFastA + '"') else ""} \
      ~{if defined(vepVepAnnotatedVcf) then ("--vep_annotated_vcf " +  '"' + vepVepAnnotatedVcf + '"') else ""} \
      ~{if defined(geneGeneAnnotationsGtf) then ("--gene_annotations_gtf " +  '"' + geneGeneAnnotationsGtf + '"') else ""} \
      ~{if defined(translationTranslationTable) then ("--translation_table " +  '"' + translationTranslationTable + '"') else ""} \
      ~{if defined(miMiToTranslationTable) then ("--mito_translation_table " +  '"' + miMiToTranslationTable + '"') else ""} \
      ~{if defined(varVarPrefix) then ("--var_prefix " +  '"' + varVarPrefix + '"') else ""} \
      ~{true="--report_ref_seq" false="" reportReportRefSeq} \
      ~{if defined(outputOutputProteinDb) then ("--output_proteindb " +  '"' + outputOutputProteinDb + '"') else ""} \
      ~{if defined(annotationAnnotationFieldName) then ("--annotation_field_name " +  '"' + annotationAnnotationFieldName + '"') else ""} \
      ~{if defined(afAfField) then ("--af_field " +  '"' + afAfField + '"') else ""} \
      ~{if defined(afAfThreshold) then ("--af_threshold " +  '"' + afAfThreshold + '"') else ""} \
      ~{if defined(transcriptTranscriptIndex) then ("--transcript_index " +  '"' + transcriptTranscriptIndex + '"') else ""} \
      ~{if defined(consequenceConsequenceIndex) then ("--consequence_index " +  '"' + consequenceConsequenceIndex + '"') else ""} \
      ~{if defined(excludeExcludeBiotypes) then ("--exclude_biotypes " +  '"' + excludeExcludeBiotypes + '"') else ""} \
      ~{if defined(excludeExcludeConsequences) then ("--exclude_consequences " +  '"' + excludeExcludeConsequences + '"') else ""} \
      ~{true="--skip_including_all_cds" false="" skipSkipIncludingAllCds} \
      ~{if defined(includeIncludeBiotypes) then ("--include_biotypes " +  '"' + includeIncludeBiotypes + '"') else ""} \
      ~{if defined(includeIncludeConsequences) then ("--include_consequences " +  '"' + includeIncludeConsequences + '"') else ""} \
      ~{if defined(biotypeBiotypeStr) then ("--biotype_str " +  '"' + biotypeBiotypeStr + '"') else ""} \
      ~{true="--ignore_filters" false="" ignoreIgnoreFilters} \
      ~{if defined(acceptedAcceptedFilters) then ("--accepted_filters " +  '"' + acceptedAcceptedFilters + '"') else ""}
  >>>
}