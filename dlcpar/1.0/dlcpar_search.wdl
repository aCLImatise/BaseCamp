version 1.0

task DlcparSearch {
  input {
    String streeStree
    String sSMap
    String inputInputExt
    String outputOutputExt
    String dupDupCost
    String lossLossCost
    String coalCoalCost
    Boolean explicitExplicit
    Boolean iI
    Boolean nNPrescreen
    String inInItLocusTree
    String seedSeed
    Boolean logLog
  }
  command <<<
    dlcpar_search \
      ~{if defined(streeStree) then ("--stree " +  '"' + streeStree + '"') else ""} \
      ~{if defined(sSMap) then ("--smap " +  '"' + sSMap + '"') else ""} \
      ~{if defined(inputInputExt) then ("--inputext " +  '"' + inputInputExt + '"') else ""} \
      ~{if defined(outputOutputExt) then ("--outputext " +  '"' + outputOutputExt + '"') else ""} \
      ~{if defined(dupDupCost) then ("--dupcost " +  '"' + dupDupCost + '"') else ""} \
      ~{if defined(lossLossCost) then ("--losscost " +  '"' + lossLossCost + '"') else ""} \
      ~{if defined(coalCoalCost) then ("--coalcost " +  '"' + coalCoalCost + '"') else ""} \
      ~{true="--explicit" false="" explicitExplicit} \
      ~{true="-i" false="" iI} \
      ~{true="--nprescreen" false="" nNPrescreen} \
      ~{if defined(inInItLocusTree) then ("--init-locus-tree " +  '"' + inInItLocusTree + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--log" false="" logLog}
  >>>
}