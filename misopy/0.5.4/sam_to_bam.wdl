version 1.0

task SamToBam {
  input {
    String convertConvert
    String refRef
  }
  command <<<
    sam_to_bam \
      ~{if defined(convertConvert) then ("--convert " +  '"' + convertConvert + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}