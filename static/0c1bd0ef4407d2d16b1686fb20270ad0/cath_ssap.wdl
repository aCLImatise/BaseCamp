version 1.0

task CathSsap {
  input {
    Boolean vV
    Boolean debugDebug
    Boolean oO
    File cliqueCliqueFile
    File dominDominFile
    String maxMaxScoreToFastRerun
    String maxMaxScoreToSlowRerun
    Boolean slowSlowSsapOnly
    Boolean localLocalSsapScore
    Boolean allAllScores
    String protProtSrcFiles
    String supSupDir
    String alignAlignDir
    String minMinScoreForFiles
    String minMinSupScore
    Boolean rasmolRasmolScript
    Boolean xmlXmlSup
    File pdbPdbPath
    File dsspDsspPath
    File wolfWolfPath
    File secSecPath
    String pdbPdbPrefix
    String dsspDsspPrefix
    String wolfWolfPrefix
    String secSecPrefix
    String pdbPdbSuffix
    String dsspDsspSuffix
    String wolfWolfSuffix
    String secSecSuffix
    String alignAlignRegions
    Boolean alignmentAlignmentHelp
    Boolean citationCitationHelp
    Boolean scoresScoresHelp
    String? proteinProtein1
    String? proteinProtein2
  }
  command <<<
    cath-ssap \
      ~{proteinProtein1} \
      ~{true="-v" false="" vV} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-o" false="" oO} \
      ~{if defined(cliqueCliqueFile) then ("--clique-file " +  '"' + cliqueCliqueFile + '"') else ""} \
      ~{if defined(dominDominFile) then ("--domin-file " +  '"' + dominDominFile + '"') else ""} \
      ~{if defined(maxMaxScoreToFastRerun) then ("--max-score-to-fast-rerun " +  '"' + maxMaxScoreToFastRerun + '"') else ""} \
      ~{if defined(maxMaxScoreToSlowRerun) then ("--max-score-to-slow-rerun " +  '"' + maxMaxScoreToSlowRerun + '"') else ""} \
      ~{true="--slow-ssap-only" false="" slowSlowSsapOnly} \
      ~{true="--local-ssap-score" false="" localLocalSsapScore} \
      ~{true="--all-scores" false="" allAllScores} \
      ~{if defined(protProtSrcFiles) then ("--prot-src-files " +  '"' + protProtSrcFiles + '"') else ""} \
      ~{if defined(supSupDir) then ("--supdir " +  '"' + supSupDir + '"') else ""} \
      ~{if defined(alignAlignDir) then ("--aligndir " +  '"' + alignAlignDir + '"') else ""} \
      ~{if defined(minMinScoreForFiles) then ("--min-score-for-files " +  '"' + minMinScoreForFiles + '"') else ""} \
      ~{if defined(minMinSupScore) then ("--min-sup-score " +  '"' + minMinSupScore + '"') else ""} \
      ~{true="--rasmol-script" false="" rasmolRasmolScript} \
      ~{true="--xmlsup" false="" xmlXmlSup} \
      ~{if defined(pdbPdbPath) then ("--pdb-path " +  '"' + pdbPdbPath + '"') else ""} \
      ~{if defined(dsspDsspPath) then ("--dssp-path " +  '"' + dsspDsspPath + '"') else ""} \
      ~{if defined(wolfWolfPath) then ("--wolf-path " +  '"' + wolfWolfPath + '"') else ""} \
      ~{if defined(secSecPath) then ("--sec-path " +  '"' + secSecPath + '"') else ""} \
      ~{if defined(pdbPdbPrefix) then ("--pdb-prefix " +  '"' + pdbPdbPrefix + '"') else ""} \
      ~{if defined(dsspDsspPrefix) then ("--dssp-prefix " +  '"' + dsspDsspPrefix + '"') else ""} \
      ~{if defined(wolfWolfPrefix) then ("--wolf-prefix " +  '"' + wolfWolfPrefix + '"') else ""} \
      ~{if defined(secSecPrefix) then ("--sec-prefix " +  '"' + secSecPrefix + '"') else ""} \
      ~{if defined(pdbPdbSuffix) then ("--pdb-suffix " +  '"' + pdbPdbSuffix + '"') else ""} \
      ~{if defined(dsspDsspSuffix) then ("--dssp-suffix " +  '"' + dsspDsspSuffix + '"') else ""} \
      ~{if defined(wolfWolfSuffix) then ("--wolf-suffix " +  '"' + wolfWolfSuffix + '"') else ""} \
      ~{if defined(secSecSuffix) then ("--sec-suffix " +  '"' + secSecSuffix + '"') else ""} \
      ~{if defined(alignAlignRegions) then ("--align-regions " +  '"' + alignAlignRegions + '"') else ""} \
      ~{true="--alignment-help" false="" alignmentAlignmentHelp} \
      ~{true="--citation-help" false="" citationCitationHelp} \
      ~{true="--scores-help" false="" scoresScoresHelp} \
      ~{proteinProtein2}
  >>>
}