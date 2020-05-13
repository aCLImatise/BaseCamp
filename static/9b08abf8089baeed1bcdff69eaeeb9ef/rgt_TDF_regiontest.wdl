version 1.0

task RgtTDFRegiontest {
  input {
    Boolean rR
    Boolean rlRl
    Boolean rnRn
    Boolean bedBed
    Boolean oO
    Boolean tT
    Boolean nN
    Boolean organismOrganism
    Boolean showShowDbs
    Boolean scoreScore
    Boolean aA
    Boolean ccfCcf
    Boolean rtRt
    Boolean logLog
    Boolean fF
    Boolean obedObed
    Boolean showShowPa
    Boolean mpMp
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
    rgt-TDF regiontest \
      ~{true="-r" false="" rR} \
      ~{true="-rl" false="" rlRl} \
      ~{true="-rn" false="" rnRn} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-n" false="" nN} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-showdbs" false="" showShowDbs} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-a" false="" aA} \
      ~{true="-ccf" false="" ccfCcf} \
      ~{true="-rt" false="" rtRt} \
      ~{true="-log" false="" logLog} \
      ~{true="-f" false="" fF} \
      ~{true="-obed" false="" obedObed} \
      ~{true="-showpa" false="" showShowPa} \
      ~{true="-mp" false="" mpMp} \
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