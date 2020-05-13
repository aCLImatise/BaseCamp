version 1.0

task PyatacCov {
  input {
    String bamBam
    Int coresCores
    Int lowerLower
    Int upperUpper
    Int windowWindow
    Float scaleScale
    Boolean notNotAtac
  }
  command <<<
    pyatac cov \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{true="--not_atac" false="" notNotAtac}
  >>>
}