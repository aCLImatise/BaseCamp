version 1.0

task HicPlotMatrix {
  input {
    String matrixMatrix
    String outOutFilename
    String titleTitle
    String scoreScoreName
    Boolean perPerChromosome
    Boolean clearClearMaskedBins
    Array[String]+ chromosomeChromosomeOrder
    String regionRegion
    String regionRegion2
    Boolean log1pLog1p
    Boolean logLog
    String colormapColormap
    String vminVmin
    String vmaxVmax
    String dpiDpi
    Array[String]+ bigwigBigwig
    Boolean bigwigBigwigAdditionalVerticalAxis
    String vminVminBigwig
    String vmaxVmaxBigwig
    Boolean flipFlipBigwigSign
    String scaleScaleFactorBigwig
    String fontFontSize
    String rotationRotationX
    String rotationRotationY
    String loopsLoops
  }
  command <<<
    hicPlotMatrix \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(scoreScoreName) then ("--scoreName " +  '"' + scoreScoreName + '"') else ""} \
      ~{true="--perChromosome" false="" perPerChromosome} \
      ~{true="--clearMaskedBins" false="" clearClearMaskedBins} \
      ~{if defined(chromosomeChromosomeOrder) then ("--chromosomeOrder " +  '"' + chromosomeChromosomeOrder + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(regionRegion2) then ("--region2 " +  '"' + regionRegion2 + '"') else ""} \
      ~{true="--log1p" false="" log1pLog1p} \
      ~{true="--log" false="" logLog} \
      ~{if defined(colormapColormap) then ("--colorMap " +  '"' + colormapColormap + '"') else ""} \
      ~{if defined(vminVmin) then ("--vMin " +  '"' + vminVmin + '"') else ""} \
      ~{if defined(vmaxVmax) then ("--vMax " +  '"' + vmaxVmax + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(bigwigBigwig) then ("--bigwig " +  '"' + bigwigBigwig + '"') else ""} \
      ~{true="--bigwigAdditionalVerticalAxis" false="" bigwigBigwigAdditionalVerticalAxis} \
      ~{if defined(vminVminBigwig) then ("--vMinBigwig " +  '"' + vminVminBigwig + '"') else ""} \
      ~{if defined(vmaxVmaxBigwig) then ("--vMaxBigwig " +  '"' + vmaxVmaxBigwig + '"') else ""} \
      ~{true="--flipBigwigSign" false="" flipFlipBigwigSign} \
      ~{if defined(scaleScaleFactorBigwig) then ("--scaleFactorBigwig " +  '"' + scaleScaleFactorBigwig + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(rotationRotationX) then ("--rotationX " +  '"' + rotationRotationX + '"') else ""} \
      ~{if defined(rotationRotationY) then ("--rotationY " +  '"' + rotationRotationY + '"') else ""} \
      ~{if defined(loopsLoops) then ("--loops " +  '"' + loopsLoops + '"') else ""}
  >>>
}