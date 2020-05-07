version 1.0

task RgtTDFPromotertest {
  input {
    Boolean rR
    Boolean rnRn
    Boolean deDe
    Boolean bedBed
    Boolean bgBg
    Boolean oO
    Boolean tT
    Boolean organismOrganism
    Boolean gtfGtf
    Boolean tssTss
    Boolean plPl
    Boolean showShowDbs
    Boolean scoreScore
    Boolean scoreScoreH
    Boolean aA
    Boolean ccfCcf
    Boolean rtRt
    Boolean logLog
    Boolean obedObed
    Boolean showShowPa
    Boolean filterFilterHavana
    Boolean proteinProteinCoding
    Boolean knownKnownOnly
    Boolean dumpDump
    Boolean rnaRnaExp
    Boolean noNoFile
    Boolean lL
    Boolean eE
    Boolean cC
    Boolean frFr
    Boolean fmFm
    Boolean ofOf
    Boolean mfMf
    Boolean rmRm
    Boolean parPar
  }
  command <<<
    rgt-TDF promotertest \
      ~{true="-r" false="" rR} \
      ~{true="-rn" false="" rnRn} \
      ~{true="-de" false="" deDe} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-bg" false="" bgBg} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-gtf" false="" gtfGtf} \
      ~{true="-tss" false="" tssTss} \
      ~{true="-pl" false="" plPl} \
      ~{true="-showdbs" false="" showShowDbs} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-scoreh" false="" scoreScoreH} \
      ~{true="-a" false="" aA} \
      ~{true="-ccf" false="" ccfCcf} \
      ~{true="-rt" false="" rtRt} \
      ~{true="-log" false="" logLog} \
      ~{true="-obed" false="" obedObed} \
      ~{true="-showpa" false="" showShowPa} \
      ~{true="-filter_havana" false="" filterFilterHavana} \
      ~{true="-protein_coding" false="" proteinProteinCoding} \
      ~{true="-known_only" false="" knownKnownOnly} \
      ~{true="-dump" false="" dumpDump} \
      ~{true="-rnaexp" false="" rnaRnaExp} \
      ~{true="-nofile" false="" noNoFile} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="-fr" false="" frFr} \
      ~{true="-fm" false="" fmFm} \
      ~{true="-of" false="" ofOf} \
      ~{true="-mf" false="" mfMf} \
      ~{true="-rm" false="" rmRm} \
      ~{true="-par" false="" parPar}
  >>>
}