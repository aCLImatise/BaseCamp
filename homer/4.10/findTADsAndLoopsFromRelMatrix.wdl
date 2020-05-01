version 1.0

task FindTADsAndLoopsFromRelMatrix {
  input {
    Boolean mintMintAdScore
    Boolean mintMintAdSize
    Boolean sizeSizeTadOptima
    Boolean noNoOverlap
    Boolean noNoOverlapStrict
    Boolean skipSkipTads
    Boolean minMinLoopDist
    Boolean anchorAnchorSize
    Boolean anchorAnchorLocalBgSize
    Boolean foldFoldLocalBg
    Boolean foldFoldGlobalBg
    Boolean poissonPoissonLocalBg
    Boolean poissonPoissonGlobalBg
    Boolean minMinLoopReads
    Boolean skipSkipLoops
    String matrixMatrix
    File prefixPrefix
    String tadTad
    String loopLoop
    Boolean mindMindIst
  }
  command <<<
    findTADsAndLoopsFromRelMatrix \
      ~{true="-minTADscore" false="" mintMintAdScore} \
      ~{true="-minTADsize" false="" mintMintAdSize} \
      ~{true="-sizeTADoptima" false="" sizeSizeTadOptima} \
      ~{true="-noOverlap" false="" noNoOverlap} \
      ~{true="-noOverlapStrict" false="" noNoOverlapStrict} \
      ~{true="-skipTADs" false="" skipSkipTads} \
      ~{true="-minLoopDist" false="" minMinLoopDist} \
      ~{true="-anchorSize" false="" anchorAnchorSize} \
      ~{true="-anchorLocalBgSize" false="" anchorAnchorLocalBgSize} \
      ~{true="-foldLocalBg" false="" foldFoldLocalBg} \
      ~{true="-foldGlobalBg" false="" foldFoldGlobalBg} \
      ~{true="-poissonLocalBg" false="" poissonPoissonLocalBg} \
      ~{true="-poissonGlobalBg" false="" poissonPoissonGlobalBg} \
      ~{true="-minLoopReads" false="" minMinLoopReads} \
      ~{true="-skipLoops" false="" skipSkipLoops} \
      ~{if defined(matrixMatrix) then ("-matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(tadTad) then ("-tad " +  '"' + tadTad + '"') else ""} \
      ~{if defined(loopLoop) then ("-loop " +  '"' + loopLoop + '"') else ""} \
      ~{true="-minDist" false="" mindMindIst}
  >>>
}