version 1.0

task PyatacIns {
  input {
    String bamBam
    Int coresCores
    Int lowerLower
    Int upperUpper
    Int smoothSmooth
    Boolean notNotAtac
  }
  command <<<
    pyatac ins \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{if defined(smoothSmooth) then ("--smooth " +  '"' + smoothSmooth + '"') else ""} \
      ~{true="--not_atac" false="" notNotAtac}
  >>>
}