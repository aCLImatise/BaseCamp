version 1.0

task AfplotRegionsScatter {
  input {
    Int marginMargin
    String regionRegion
    File regionRegionFile
    String nameName
    File outputOutputDir
    File vcfVcf
    String colorColorPalette
    Int dpiDpi
  }
  command <<<
    afplot regions scatter \
      ~{if defined(marginMargin) then ("--margin " +  '"' + marginMargin + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(regionRegionFile) then ("--region-file " +  '"' + regionRegionFile + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(colorColorPalette) then ("--color-palette " +  '"' + colorColorPalette + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""}
  >>>
}