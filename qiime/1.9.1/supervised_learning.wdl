version 1.0

task SupervisedLearning.py {
  input {
    String inputInputData
    String mappingMappingFile
    String categoryCategory
    String outputOutputDir
  }
  command <<<
    supervised_learning.py \
      ~{if defined(inputInputData) then ("--input_data " +  '"' + inputInputData + '"') else ""} \
      ~{if defined(mappingMappingFile) then ("--mapping_file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}