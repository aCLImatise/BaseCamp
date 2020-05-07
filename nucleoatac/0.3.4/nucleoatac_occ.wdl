version 1.0

task NucleoatacOcc {
  input {
    String bedBed
    String bamBam
    String outOut
    String fastFastA
    String pwmPwm
    String sizesSizes
    Int coresCores
    Int upperUpper
    Int flankFlank
    Float minMinOcc
    Int nucNucSep
    Float confidenceConfidenceInterval
    Int stepStep
  }
  command <<<
    nucleoatac occ \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(pwmPwm) then ("--pwm " +  '"' + pwmPwm + '"') else ""} \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{if defined(minMinOcc) then ("--min_occ " +  '"' + minMinOcc + '"') else ""} \
      ~{if defined(nucNucSep) then ("--nuc_sep " +  '"' + nucNucSep + '"') else ""} \
      ~{if defined(confidenceConfidenceInterval) then ("--confidence_interval " +  '"' + confidenceConfidenceInterval + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""}
  >>>
}