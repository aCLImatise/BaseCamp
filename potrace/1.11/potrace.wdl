version 1.0

task Potrace {
  input {
    Boolean licenseLicense
    String backendBackend
    Boolean epsEps
    Boolean postscriptPostscript
    Boolean svgSvg
    Boolean pgmPgm
    String bB
    String bB
    String bB
    String bB
    String bB
    String bB
    String turnTurnPolicy
    String turdTurdSize
    String alphaAlphaMax
    Boolean longLongCurve
    String optOptTolerance
    String unitUnit
    String debugDebug
    String pagesizePagesize
    String widthWidth
    String heightHeight
    String resolutionResolution
    String scaleScale
    String stretchStretch
    String rotateRotate
    String marginMargin
    String leftLeftMargin
    String rightmarginRightmargin
    String topmarginTopmargin
    String bottomBottomMargin
    Boolean tightTight
    Boolean colorColor
    Boolean fillcolorFillcolor
    Boolean opaqueOpaque
    Boolean groupGroup
    Boolean flatFlat
    Boolean longLongCoding
    String gammaGamma
    String blackBlackLevel
    Boolean invertInvert
    Boolean progressProgress
    String ttyTty
    File? filenameFilename
  }
  command <<<
    potrace \
      ~{filenameFilename} \
      ~{true="--license" false="" licenseLicense} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{true="--eps" false="" epsEps} \
      ~{true="--postscript" false="" postscriptPostscript} \
      ~{true="--svg" false="" svgSvg} \
      ~{true="--pgm" false="" pgmPgm} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(turnTurnPolicy) then ("--turnpolicy " +  '"' + turnTurnPolicy + '"') else ""} \
      ~{if defined(turdTurdSize) then ("--turdsize " +  '"' + turdTurdSize + '"') else ""} \
      ~{if defined(alphaAlphaMax) then ("--alphamax " +  '"' + alphaAlphaMax + '"') else ""} \
      ~{true="--longcurve" false="" longLongCurve} \
      ~{if defined(optOptTolerance) then ("--opttolerance " +  '"' + optOptTolerance + '"') else ""} \
      ~{if defined(unitUnit) then ("--unit " +  '"' + unitUnit + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(pagesizePagesize) then ("--pagesize " +  '"' + pagesizePagesize + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(stretchStretch) then ("--stretch " +  '"' + stretchStretch + '"') else ""} \
      ~{if defined(rotateRotate) then ("--rotate " +  '"' + rotateRotate + '"') else ""} \
      ~{if defined(marginMargin) then ("--margin " +  '"' + marginMargin + '"') else ""} \
      ~{if defined(leftLeftMargin) then ("--leftmargin " +  '"' + leftLeftMargin + '"') else ""} \
      ~{if defined(rightmarginRightmargin) then ("--rightmargin " +  '"' + rightmarginRightmargin + '"') else ""} \
      ~{if defined(topmarginTopmargin) then ("--topmargin " +  '"' + topmarginTopmargin + '"') else ""} \
      ~{if defined(bottomBottomMargin) then ("--bottommargin " +  '"' + bottomBottomMargin + '"') else ""} \
      ~{true="--tight" false="" tightTight} \
      ~{true="--color" false="" colorColor} \
      ~{true="--fillcolor" false="" fillcolorFillcolor} \
      ~{true="--opaque" false="" opaqueOpaque} \
      ~{true="--group" false="" groupGroup} \
      ~{true="--flat" false="" flatFlat} \
      ~{true="--longcoding" false="" longLongCoding} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{if defined(blackBlackLevel) then ("--blacklevel " +  '"' + blackBlackLevel + '"') else ""} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--progress" false="" progressProgress} \
      ~{if defined(ttyTty) then ("--tty " +  '"' + ttyTty + '"') else ""}
  >>>
}