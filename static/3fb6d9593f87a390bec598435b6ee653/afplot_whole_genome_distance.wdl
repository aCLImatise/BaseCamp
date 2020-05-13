version 1.0

task AfplotWholeGenomeDistance {
  input {
    File outputOutput
    String excludeExcludePattern
    String sampleSample
    String labelLabel
    File vcfVcf
    String colorColorPalette
    Int dpiDpi
  }
  command <<<
    afplot whole-genome distance \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(excludeExcludePattern) then ("--exclude-pattern " +  '"' + excludeExcludePattern + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(colorColorPalette) then ("--color-palette " +  '"' + colorColorPalette + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""}
  >>>
}