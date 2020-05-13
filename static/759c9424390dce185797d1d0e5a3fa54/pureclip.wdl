version 1.0

task Pureclip {
  input {
    String inIn
    String baiBai
    File genomeGenome
    File outOut
    File orOr
    File parPar
    Boolean ctrCtr
    String stSt
    String interInter
    String chrChr
    String bcBc
    String bdwBdw
    String bdBdWn
    String dmDm
    Boolean ldLd
    String tsTs
    String tmvTmv
    String urUr
    File isIs
    File iIBam
    File iIBai
    File fisFis
    String nimNim
    Boolean upUpE
    String mibMibR
    String mibMibW
    String g1kminG1kmin
    String g1kmaxG1kmax
    String g2kminG2kmin
    String g2kmaxG2kmax
    Boolean fkFk
    String mknMkn
    String b1pB1p
    String b2pB2p
    String mtpMtp
    String mMKde
    String ntpNtp
    String ntp2Ntp2
    Boolean aANtp
    String patPat
    Boolean epalEpal
    Boolean epaEpaA
    Boolean eEPtl
    Boolean eptaEpta
    String mMRtf
    String mtcMtc
    String mtc2Mtc2
    String petPet
    String ntNt
    String ntaNta
    Boolean oaOa
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean veryVeryVerbose
  }
  command <<<
    pureclip \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(baiBai) then ("--bai " +  '"' + baiBai + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(orOr) then ("--or " +  '"' + orOr + '"') else ""} \
      ~{if defined(parPar) then ("--par " +  '"' + parPar + '"') else ""} \
      ~{true="--ctr" false="" ctrCtr} \
      ~{if defined(stSt) then ("--st " +  '"' + stSt + '"') else ""} \
      ~{if defined(interInter) then ("--inter " +  '"' + interInter + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(bcBc) then ("--bc " +  '"' + bcBc + '"') else ""} \
      ~{if defined(bdwBdw) then ("--bdw " +  '"' + bdwBdw + '"') else ""} \
      ~{if defined(bdBdWn) then ("--bdwn " +  '"' + bdBdWn + '"') else ""} \
      ~{if defined(dmDm) then ("--dm " +  '"' + dmDm + '"') else ""} \
      ~{true="--ld" false="" ldLd} \
      ~{if defined(tsTs) then ("--ts " +  '"' + tsTs + '"') else ""} \
      ~{if defined(tmvTmv) then ("--tmv " +  '"' + tmvTmv + '"') else ""} \
      ~{if defined(urUr) then ("--ur " +  '"' + urUr + '"') else ""} \
      ~{if defined(isIs) then ("--is " +  '"' + isIs + '"') else ""} \
      ~{if defined(iIBam) then ("--ibam " +  '"' + iIBam + '"') else ""} \
      ~{if defined(iIBai) then ("--ibai " +  '"' + iIBai + '"') else ""} \
      ~{if defined(fisFis) then ("--fis " +  '"' + fisFis + '"') else ""} \
      ~{if defined(nimNim) then ("--nim " +  '"' + nimNim + '"') else ""} \
      ~{true="--upe" false="" upUpE} \
      ~{if defined(mibMibR) then ("--mibr " +  '"' + mibMibR + '"') else ""} \
      ~{if defined(mibMibW) then ("--mibw " +  '"' + mibMibW + '"') else ""} \
      ~{if defined(g1kminG1kmin) then ("--g1kmin " +  '"' + g1kminG1kmin + '"') else ""} \
      ~{if defined(g1kmaxG1kmax) then ("--g1kmax " +  '"' + g1kmaxG1kmax + '"') else ""} \
      ~{if defined(g2kminG2kmin) then ("--g2kmin " +  '"' + g2kminG2kmin + '"') else ""} \
      ~{if defined(g2kmaxG2kmax) then ("--g2kmax " +  '"' + g2kmaxG2kmax + '"') else ""} \
      ~{true="--fk" false="" fkFk} \
      ~{if defined(mknMkn) then ("--mkn " +  '"' + mknMkn + '"') else ""} \
      ~{if defined(b1pB1p) then ("--b1p " +  '"' + b1pB1p + '"') else ""} \
      ~{if defined(b2pB2p) then ("--b2p " +  '"' + b2pB2p + '"') else ""} \
      ~{if defined(mtpMtp) then ("--mtp " +  '"' + mtpMtp + '"') else ""} \
      ~{if defined(mMKde) then ("--mkde " +  '"' + mMKde + '"') else ""} \
      ~{if defined(ntpNtp) then ("--ntp " +  '"' + ntpNtp + '"') else ""} \
      ~{if defined(ntp2Ntp2) then ("--ntp2 " +  '"' + ntp2Ntp2 + '"') else ""} \
      ~{true="--antp" false="" aANtp} \
      ~{if defined(patPat) then ("--pat " +  '"' + patPat + '"') else ""} \
      ~{true="--epal" false="" epalEpal} \
      ~{true="--epaa" false="" epaEpaA} \
      ~{true="--eptl" false="" eEPtl} \
      ~{true="--epta" false="" eptaEpta} \
      ~{if defined(mMRtf) then ("--mrtf " +  '"' + mMRtf + '"') else ""} \
      ~{if defined(mtcMtc) then ("--mtc " +  '"' + mtcMtc + '"') else ""} \
      ~{if defined(mtc2Mtc2) then ("--mtc2 " +  '"' + mtc2Mtc2 + '"') else ""} \
      ~{if defined(petPet) then ("--pet " +  '"' + petPet + '"') else ""} \
      ~{if defined(ntNt) then ("--nt " +  '"' + ntNt + '"') else ""} \
      ~{if defined(ntaNta) then ("--nta " +  '"' + ntaNta + '"') else ""} \
      ~{true="--oa" false="" oaOa} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose}
  >>>
}