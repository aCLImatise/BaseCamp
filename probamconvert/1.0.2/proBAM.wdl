version 1.0

task ProBAM.py {
  input {
    String nameName
    Boolean mismatchesMismatches
    String databaseDatabase
    String speciesSpecies
    String fileFile
    Directory directoryDirectory
    String rmRmDuplicates
    String threeThreeFrameTranslation
    String decoyDecoyAnnotation
    String sortingSortingOrder
    String prePrePickedAnnotation
    String includeIncludeUnmapped
    String conversionConversionMode
    String commentsComments
    String validatedValidatedOnly
  }
  command <<<
    proBAM.py \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--mismatches" false="" mismatchesMismatches} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(rmRmDuplicates) then ("--rm_duplicates " +  '"' + rmRmDuplicates + '"') else ""} \
      ~{if defined(threeThreeFrameTranslation) then ("--three_frame_translation " +  '"' + threeThreeFrameTranslation + '"') else ""} \
      ~{if defined(decoyDecoyAnnotation) then ("--decoy_annotation " +  '"' + decoyDecoyAnnotation + '"') else ""} \
      ~{if defined(sortingSortingOrder) then ("--sorting_order " +  '"' + sortingSortingOrder + '"') else ""} \
      ~{if defined(prePrePickedAnnotation) then ("--pre_picked_annotation " +  '"' + prePrePickedAnnotation + '"') else ""} \
      ~{if defined(includeIncludeUnmapped) then ("--include_unmapped " +  '"' + includeIncludeUnmapped + '"') else ""} \
      ~{if defined(conversionConversionMode) then ("--conversion_mode " +  '"' + conversionConversionMode + '"') else ""} \
      ~{if defined(commentsComments) then ("--comments " +  '"' + commentsComments + '"') else ""} \
      ~{if defined(validatedValidatedOnly) then ("--validated_only " +  '"' + validatedValidatedOnly + '"') else ""}
  >>>
}