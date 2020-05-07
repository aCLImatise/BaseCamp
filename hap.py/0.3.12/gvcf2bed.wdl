version 1.0

task Gvcf2bed {
  input {
    String inputInputFile
    Boolean oO
    Boolean rR
    Boolean tT
  }
  command <<<
    gvcf2bed \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-T" false="" tT}
  >>>
}