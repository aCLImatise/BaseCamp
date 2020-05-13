version 1.0

task SplitBedIntoEqualRegions.py {
  input {
    String inputInputFile
    String numNumOfFiles
    String outputOutputFiles
  }
  command <<<
    split_Bed_into_equal_regions.py \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(numNumOfFiles) then ("--num-of-files " +  '"' + numNumOfFiles + '"') else ""} \
      ~{if defined(outputOutputFiles) then ("--output-files " +  '"' + outputOutputFiles + '"') else ""}
  >>>
}