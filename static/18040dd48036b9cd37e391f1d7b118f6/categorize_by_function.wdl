version 1.0

task CategorizeByFunction.py {
  input {
    String inputInputFp
    String outputOutputFp
    String metadataMetadataCategory
    String levelLevel
  }
  command <<<
    categorize_by_function.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(metadataMetadataCategory) then ("--metadata_category " +  '"' + metadataMetadataCategory + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""}
  >>>
}