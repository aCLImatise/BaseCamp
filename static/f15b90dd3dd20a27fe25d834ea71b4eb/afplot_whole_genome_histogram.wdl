version 1.0

task AfplotWholeGenomeHistogram {
  input {
    File outputOutput
    String excludeExcludePattern
    String sampleSample
    String labelLabel
    File vcfVcf
    String colorColorPalette
    Int dpiDpi
    Boolean kdeKdeOnly
  }
  command <<<
    afplot whole-genome histogram \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(excludeExcludePattern) then ("--exclude-pattern " +  '"' + excludeExcludePattern + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(colorColorPalette) then ("--color-palette " +  '"' + colorColorPalette + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--kde-only" false="" kdeKdeOnly}
  >>>
}