version 1.0

task MapGL.py {
  input {
    File outputOutput
    Float thresholdThreshold
    String gapGap
    String verboseVerbose
    Boolean dropDropSplit
    String inInFormat
    Boolean fullFullLabels
    String? inputInput
    String? treeTree
    String? qnameQname
    String? tTName
    String? alignmentsAlignments
  }
  command <<<
    mapGL.py \
      ~{inputInput} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--drop_split" false="" dropDropSplit} \
      ~{if defined(inInFormat) then ("--in_format " +  '"' + inInFormat + '"') else ""} \
      ~{true="--full_labels" false="" fullFullLabels} \
      ~{treeTree} \
      ~{qnameQname} \
      ~{tTName} \
      ~{alignmentsAlignments}
  >>>
}