version 1.0

task Weblogo {
  input {
    File finFin
    String uploadUpload
    String datatypeDatatype
    File fFOut
    String formatFormat
    String sequenceSequenceType
    String alphabetAlphabet
    String unitsUnits
    String compositionComposition
    String weightWeight
    String firstFirstIndex
    String lowerLower
    String upperUpper
    Boolean ignoreIgnoreLowerCase
    Boolean reverseReverse
    Boolean complementComplement
    Boolean revRevComp
    String sizeSize
    String stacksStacksPerLine
    String titleTitle
    String labelLabel
    String showShowXAxis
    String xlabelXlabel
    String annotateAnnotate
    String rotateRotateNumbers
    String numberNumberInterval
    String yaxisYaxis
    String showShowYaxis
    String ylabelYlabel
    String showShowEnds
    String fineFinePrint
    String ticTicMarks
    String errorErrorBars
    String reverseReverseStacks
    String colorColorScheme
    String colorColor
    String defaultDefaultColor
    String fontFontSize
    String titleTitleFontSize
    String smallSmallFontSize
    String numberNumberFontSize
    String textTextFont
    String logoLogoFont
    String titleTitleFont
    String stackStackWidth
    String aspectAspectRatio
    String boxBox
    String resolutionResolution
    String scaleScaleWidth
    String debugDebug
    String errorbarErrorbarFraction
    String errorbarErrorbarWidthFraction
    String errorbarErrorbarGray
    Boolean serveServe
    String portPort
    String? sequenceSequenceDataFa
    String? sequenceSequenceLogoEps
  }
  command <<<
    weblogo \
      ~{sequenceSequenceDataFa} \
      ~{if defined(finFin) then ("--fin " +  '"' + finFin + '"') else ""} \
      ~{if defined(uploadUpload) then ("--upload " +  '"' + uploadUpload + '"') else ""} \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{if defined(fFOut) then ("--fout " +  '"' + fFOut + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence-type " +  '"' + sequenceSequenceType + '"') else ""} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{if defined(unitsUnits) then ("--units " +  '"' + unitsUnits + '"') else ""} \
      ~{if defined(compositionComposition) then ("--composition " +  '"' + compositionComposition + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(firstFirstIndex) then ("--first-index " +  '"' + firstFirstIndex + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{true="--ignore-lower-case" false="" ignoreIgnoreLowerCase} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--revcomp" false="" revRevComp} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(stacksStacksPerLine) then ("--stacks-per-line " +  '"' + stacksStacksPerLine + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(showShowXAxis) then ("--show-xaxis " +  '"' + showShowXAxis + '"') else ""} \
      ~{if defined(xlabelXlabel) then ("--xlabel " +  '"' + xlabelXlabel + '"') else ""} \
      ~{if defined(annotateAnnotate) then ("--annotate " +  '"' + annotateAnnotate + '"') else ""} \
      ~{if defined(rotateRotateNumbers) then ("--rotate-numbers " +  '"' + rotateRotateNumbers + '"') else ""} \
      ~{if defined(numberNumberInterval) then ("--number-interval " +  '"' + numberNumberInterval + '"') else ""} \
      ~{if defined(yaxisYaxis) then ("--yaxis " +  '"' + yaxisYaxis + '"') else ""} \
      ~{if defined(showShowYaxis) then ("--show-yaxis " +  '"' + showShowYaxis + '"') else ""} \
      ~{if defined(ylabelYlabel) then ("--ylabel " +  '"' + ylabelYlabel + '"') else ""} \
      ~{if defined(showShowEnds) then ("--show-ends " +  '"' + showShowEnds + '"') else ""} \
      ~{if defined(fineFinePrint) then ("--fineprint " +  '"' + fineFinePrint + '"') else ""} \
      ~{if defined(ticTicMarks) then ("--ticmarks " +  '"' + ticTicMarks + '"') else ""} \
      ~{if defined(errorErrorBars) then ("--errorbars " +  '"' + errorErrorBars + '"') else ""} \
      ~{if defined(reverseReverseStacks) then ("--reverse-stacks " +  '"' + reverseReverseStacks + '"') else ""} \
      ~{if defined(colorColorScheme) then ("--color-scheme " +  '"' + colorColorScheme + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(defaultDefaultColor) then ("--default-color " +  '"' + defaultDefaultColor + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(titleTitleFontSize) then ("--title-fontsize " +  '"' + titleTitleFontSize + '"') else ""} \
      ~{if defined(smallSmallFontSize) then ("--small-fontsize " +  '"' + smallSmallFontSize + '"') else ""} \
      ~{if defined(numberNumberFontSize) then ("--number-fontsize " +  '"' + numberNumberFontSize + '"') else ""} \
      ~{if defined(textTextFont) then ("--text-font " +  '"' + textTextFont + '"') else ""} \
      ~{if defined(logoLogoFont) then ("--logo-font " +  '"' + logoLogoFont + '"') else ""} \
      ~{if defined(titleTitleFont) then ("--title-font " +  '"' + titleTitleFont + '"') else ""} \
      ~{if defined(stackStackWidth) then ("--stack-width " +  '"' + stackStackWidth + '"') else ""} \
      ~{if defined(aspectAspectRatio) then ("--aspect-ratio " +  '"' + aspectAspectRatio + '"') else ""} \
      ~{if defined(boxBox) then ("--box " +  '"' + boxBox + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(scaleScaleWidth) then ("--scale-width " +  '"' + scaleScaleWidth + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(errorbarErrorbarFraction) then ("--errorbar-fraction " +  '"' + errorbarErrorbarFraction + '"') else ""} \
      ~{if defined(errorbarErrorbarWidthFraction) then ("--errorbar-width-fraction " +  '"' + errorbarErrorbarWidthFraction + '"') else ""} \
      ~{if defined(errorbarErrorbarGray) then ("--errorbar-gray " +  '"' + errorbarErrorbarGray + '"') else ""} \
      ~{true="--serve" false="" serveServe} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{sequenceSequenceLogoEps}
  >>>
}