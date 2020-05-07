version 1.0

task CompareCategories.py {
  input {
    String methodMethod
    String inputInputDm
    String mappingMappingFile
    String categoriesCategories
    String outputOutputDir
  }
  command <<<
    compare_categories.py \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(inputInputDm) then ("--input_dm " +  '"' + inputInputDm + '"') else ""} \
      ~{if defined(mappingMappingFile) then ("--mapping_file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(categoriesCategories) then ("--categories " +  '"' + categoriesCategories + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}