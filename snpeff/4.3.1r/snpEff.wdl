version 1.0

task SnpEff {
  input {
    String chrChr
    Boolean classicClassic
    File csvCsvStats
    Boolean downloadDownload
    String iI
    Boolean fileFileList
    String oO
    Boolean sS
    Boolean noNoStats
    Boolean fiFi
    Boolean noNoDownstream
    Boolean noNoIntergenic
    Boolean noNoIntron
    Boolean noNoUpstream
    Boolean noNoUtr
    String noNo
    Boolean cancerCancer
    File cancerCancerSamples
    Boolean formatFormatEff
    Boolean geneidGeneid
    Boolean hgvsHgvs
    Boolean hgvHgvSold
    Boolean hgvs1letteraaHgvs1letteraa
    Boolean hgvHgvStrid
    Boolean lLOf
    Boolean noNoHgvs
    Boolean nolNolOf
    Boolean noNoShiftHgvs
    Boolean oicOicR
    Boolean sequenceSequenceOntology
    Boolean cC
    String configConfigOption
    Boolean dD
    File datadirDatadir
    Boolean downloadDownload
    Boolean noNoDownload
    Boolean noNoLog
    Boolean tT
    Boolean qQ
    Boolean vV
    Boolean versionVersion
    Boolean canonCanon
    File canonCanonList
    Boolean interactionInteraction
    File intervalInterval
    String maxMaxTsl
    Boolean motifMotif
    Boolean nextNextProt
    Boolean noNoGenome
    Boolean noexpandNoexpandIub
    Boolean noNoInteraction
    Boolean noNoMotif
    Boolean noNoNextProt
    Boolean onlyOnlyReg
    Boolean onlyOnlyProtein
    File onlyOnlyTr
    String regReg
    Boolean ssSs
    Int spliceSpliceRegionExonSize
    Int spliceSpliceRegionIntronMin
    Int spliceSpliceRegionIntronMax
    Boolean strictStrict
    Boolean udUd
    String? variantsVariantsFile
  }
  command <<<
    snpEff \
      ~{variantsVariantsFile} \
      ~{if defined(chrChr) then ("-chr " +  '"' + chrChr + '"') else ""} \
      ~{true="-classic" false="" classicClassic} \
      ~{if defined(csvCsvStats) then ("-csvStats " +  '"' + csvCsvStats + '"') else ""} \
      ~{true="-download" false="" downloadDownload} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-fileList" false="" fileFileList} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-noStats" false="" noNoStats} \
      ~{true="-fi" false="" fiFi} \
      ~{true="-no-downstream" false="" noNoDownstream} \
      ~{true="-no-intergenic" false="" noNoIntergenic} \
      ~{true="-no-intron" false="" noNoIntron} \
      ~{true="-no-upstream" false="" noNoUpstream} \
      ~{true="-no-utr" false="" noNoUtr} \
      ~{if defined(noNo) then ("-no " +  '"' + noNo + '"') else ""} \
      ~{true="-cancer" false="" cancerCancer} \
      ~{if defined(cancerCancerSamples) then ("-cancerSamples " +  '"' + cancerCancerSamples + '"') else ""} \
      ~{true="-formatEff" false="" formatFormatEff} \
      ~{true="-geneId" false="" geneidGeneid} \
      ~{true="-hgvs" false="" hgvsHgvs} \
      ~{true="-hgvsOld" false="" hgvHgvSold} \
      ~{true="-hgvs1LetterAa" false="" hgvs1letteraaHgvs1letteraa} \
      ~{true="-hgvsTrId" false="" hgvHgvStrid} \
      ~{true="-lof" false="" lLOf} \
      ~{true="-noHgvs" false="" noNoHgvs} \
      ~{true="-noLof" false="" nolNolOf} \
      ~{true="-noShiftHgvs" false="" noNoShiftHgvs} \
      ~{true="-oicr" false="" oicOicR} \
      ~{true="-sequenceOntology" false="" sequenceSequenceOntology} \
      ~{true="-c" false="" cC} \
      ~{if defined(configConfigOption) then ("-configOption " +  '"' + configConfigOption + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(datadirDatadir) then ("-dataDir " +  '"' + datadirDatadir + '"') else ""} \
      ~{true="-download" false="" downloadDownload} \
      ~{true="-nodownload" false="" noNoDownload} \
      ~{true="-noLog" false="" noNoLog} \
      ~{true="-t" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-canon" false="" canonCanon} \
      ~{if defined(canonCanonList) then ("-canonList " +  '"' + canonCanonList + '"') else ""} \
      ~{true="-interaction" false="" interactionInteraction} \
      ~{if defined(intervalInterval) then ("-interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(maxMaxTsl) then ("-maxTSL " +  '"' + maxMaxTsl + '"') else ""} \
      ~{true="-motif" false="" motifMotif} \
      ~{true="-nextProt" false="" nextNextProt} \
      ~{true="-noGenome" false="" noNoGenome} \
      ~{true="-noExpandIUB" false="" noexpandNoexpandIub} \
      ~{true="-noInteraction" false="" noNoInteraction} \
      ~{true="-noMotif" false="" noNoMotif} \
      ~{true="-noNextProt" false="" noNoNextProt} \
      ~{true="-onlyReg" false="" onlyOnlyReg} \
      ~{true="-onlyProtein" false="" onlyOnlyProtein} \
      ~{if defined(onlyOnlyTr) then ("-onlyTr " +  '"' + onlyOnlyTr + '"') else ""} \
      ~{if defined(regReg) then ("-reg " +  '"' + regReg + '"') else ""} \
      ~{true="-ss" false="" ssSs} \
      ~{if defined(spliceSpliceRegionExonSize) then ("-spliceRegionExonSize " +  '"' + spliceSpliceRegionExonSize + '"') else ""} \
      ~{if defined(spliceSpliceRegionIntronMin) then ("-spliceRegionIntronMin " +  '"' + spliceSpliceRegionIntronMin + '"') else ""} \
      ~{if defined(spliceSpliceRegionIntronMax) then ("-spliceRegionIntronMax " +  '"' + spliceSpliceRegionIntronMax + '"') else ""} \
      ~{true="-strict" false="" strictStrict} \
      ~{true="-ud" false="" udUd}
  >>>
}