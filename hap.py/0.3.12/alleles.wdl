version 1.0

task Alleles {
  input {
    String inputInputFile
    Boolean oO
    String gtGt
    String sampleSample
  }
  command <<<
    alleles \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(gtGt) then ("--gt " +  '"' + gtGt + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""}
  >>>
}