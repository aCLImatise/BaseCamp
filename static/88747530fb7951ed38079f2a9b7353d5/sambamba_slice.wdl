version 1.0

task SambambaSlice {
  input {
    String outputOutputFilename
    File regionsRegions
  }
  command <<<
    sambamba slice \
      ~{if defined(outputOutputFilename) then ("--output-filename " +  '"' + outputOutputFilename + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""}
  >>>
}