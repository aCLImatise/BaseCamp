version 1.0

task CompareAlphaDiversity.py {
  input {
    String alphaAlphaDiversityFp
    String mappingMappingFp
    String categoriesCategories
    String outputOutputDir
  }
  command <<<
    compare_alpha_diversity.py \
      ~{if defined(alphaAlphaDiversityFp) then ("--alpha_diversity_fp " +  '"' + alphaAlphaDiversityFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(categoriesCategories) then ("--categories " +  '"' + categoriesCategories + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}