version 1.0

task MaskrcSvg.py {
  input {
    Boolean gubbinsGubbins
    String alnAln
    String outOut
    String symbolSymbol
    File regionsRegions
    File svgSvg
    String svgSvgSize
    File svgSvgOrder
    String svgSvgColour
    Boolean consensusConsensus
    String? prefixPrefix
  }
  command <<<
    maskrc-svg.py \
      ~{prefixPrefix} \
      ~{true="--gubbins" false="" gubbinsGubbins} \
      ~{if defined(alnAln) then ("--aln " +  '"' + alnAln + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(symbolSymbol) then ("--symbol " +  '"' + symbolSymbol + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(svgSvg) then ("--svg " +  '"' + svgSvg + '"') else ""} \
      ~{if defined(svgSvgSize) then ("--svgsize " +  '"' + svgSvgSize + '"') else ""} \
      ~{if defined(svgSvgOrder) then ("--svgorder " +  '"' + svgSvgOrder + '"') else ""} \
      ~{if defined(svgSvgColour) then ("--svgcolour " +  '"' + svgSvgColour + '"') else ""} \
      ~{true="--consensus" false="" consensusConsensus}
  >>>
}