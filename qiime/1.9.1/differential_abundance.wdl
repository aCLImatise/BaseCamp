version 1.0

task DifferentialAbundance.py {
  input {
    Boolean verboseVerbose
    String inputInputPath
    String outOutPath
    String algorithmAlgorithm
    String mappingMappingFilePath
    String mappingMappingFileCategory
    String mappingMappingFileSubcategory1
    String mappingMappingFileSubcategory2
    Boolean listListAlgorithms
    Boolean deseq2Deseq2DiagnosticPlots
  }
  command <<<
    differential_abundance.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outOutPath) then ("--out_path " +  '"' + outOutPath + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(mappingMappingFilePath) then ("--mapping_file_path " +  '"' + mappingMappingFilePath + '"') else ""} \
      ~{if defined(mappingMappingFileCategory) then ("--mapping_file_category " +  '"' + mappingMappingFileCategory + '"') else ""} \
      ~{if defined(mappingMappingFileSubcategory1) then ("--mapping_file_subcategory_1 " +  '"' + mappingMappingFileSubcategory1 + '"') else ""} \
      ~{if defined(mappingMappingFileSubcategory2) then ("--mapping_file_subcategory_2 " +  '"' + mappingMappingFileSubcategory2 + '"') else ""} \
      ~{true="--list_algorithms" false="" listListAlgorithms} \
      ~{true="--DESeq2_diagnostic_plots" false="" deseq2Deseq2DiagnosticPlots}
  >>>
}