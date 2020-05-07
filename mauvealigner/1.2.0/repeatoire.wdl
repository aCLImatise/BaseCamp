version 1.0

task Repeatoire {
  input {
    String allowAllowRedundant
    String chainChain
    String extendExtend
    String windowWindow
    String gapGapOpen
    String gapGapExtend
    String hH
    String highestHighest
    String lL
    String largeLargeRepeats
    String loadLoadSml
    String onlyOnlyDirect
    String onlyOnlyExtended
    String outputOutput
    String percentidPercentid
    String novelNovelSubsets
    String novelNovelMatches
    String rmaxRmax
    String rmRmIn
    String seedsSeeds
    String sequenceSequence
    String smallSmallRepeats
    String scoreScoreOut
    String solidSolid
    String spSp
    String tandemTandem
    String twoTwoHits
    String uU
    String unUnAlign
    String wW
    String xXMfa
    String xmlXml
    String zZ
  }
  command <<<
    repeatoire \
      ~{if defined(allowAllowRedundant) then ("--allow-redundant " +  '"' + allowAllowRedundant + '"') else ""} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(extendExtend) then ("--extend " +  '"' + extendExtend + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gapopen " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gapextend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(hH) then ("--h " +  '"' + hH + '"') else ""} \
      ~{if defined(highestHighest) then ("--highest " +  '"' + highestHighest + '"') else ""} \
      ~{if defined(lL) then ("--l " +  '"' + lL + '"') else ""} \
      ~{if defined(largeLargeRepeats) then ("--large-repeats " +  '"' + largeLargeRepeats + '"') else ""} \
      ~{if defined(loadLoadSml) then ("--load-sml " +  '"' + loadLoadSml + '"') else ""} \
      ~{if defined(onlyOnlyDirect) then ("--onlydirect " +  '"' + onlyOnlyDirect + '"') else ""} \
      ~{if defined(onlyOnlyExtended) then ("--onlyextended " +  '"' + onlyOnlyExtended + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(percentidPercentid) then ("--percentid " +  '"' + percentidPercentid + '"') else ""} \
      ~{if defined(novelNovelSubsets) then ("--novel-subsets " +  '"' + novelNovelSubsets + '"') else ""} \
      ~{if defined(novelNovelMatches) then ("--novel-matches " +  '"' + novelNovelMatches + '"') else ""} \
      ~{if defined(rmaxRmax) then ("--rmax " +  '"' + rmaxRmax + '"') else ""} \
      ~{if defined(rmRmIn) then ("--rmin " +  '"' + rmRmIn + '"') else ""} \
      ~{if defined(seedsSeeds) then ("--seeds " +  '"' + seedsSeeds + '"') else ""} \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(smallSmallRepeats) then ("--small-repeats " +  '"' + smallSmallRepeats + '"') else ""} \
      ~{if defined(scoreScoreOut) then ("--score-out " +  '"' + scoreScoreOut + '"') else ""} \
      ~{if defined(solidSolid) then ("--solid " +  '"' + solidSolid + '"') else ""} \
      ~{if defined(spSp) then ("--sp " +  '"' + spSp + '"') else ""} \
      ~{if defined(tandemTandem) then ("--tandem " +  '"' + tandemTandem + '"') else ""} \
      ~{if defined(twoTwoHits) then ("--two-hits " +  '"' + twoTwoHits + '"') else ""} \
      ~{if defined(uU) then ("--u " +  '"' + uU + '"') else ""} \
      ~{if defined(unUnAlign) then ("--unalign " +  '"' + unUnAlign + '"') else ""} \
      ~{if defined(wW) then ("--w " +  '"' + wW + '"') else ""} \
      ~{if defined(xXMfa) then ("--xmfa " +  '"' + xXMfa + '"') else ""} \
      ~{if defined(xmlXml) then ("--xml " +  '"' + xmlXml + '"') else ""} \
      ~{if defined(zZ) then ("--z " +  '"' + zZ + '"') else ""}
  >>>
}