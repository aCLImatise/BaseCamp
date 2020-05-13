version 1.0

task Rmats.py {
  input {
    String gtfGtf
    String b1B1
    String b2B2
    String s1S1
    String s2S2
    String odOd
    String tT
    String libLibType
    String readReadLength
    String anchorAnchorLength
    String topTopHatAnchor
    String biBi
    String nNThread
    String tTStat
    String cstCstAt
    Boolean statStatOff
    String? arg1Arg1
    String? arg2Arg2
  }
  command <<<
    rmats.py \
      ~{arg1Arg1} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(b1B1) then ("--b1 " +  '"' + b1B1 + '"') else ""} \
      ~{if defined(b2B2) then ("--b2 " +  '"' + b2B2 + '"') else ""} \
      ~{if defined(s1S1) then ("--s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("--s2 " +  '"' + s2S2 + '"') else ""} \
      ~{if defined(odOd) then ("--od " +  '"' + odOd + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(libLibType) then ("--libType " +  '"' + libLibType + '"') else ""} \
      ~{if defined(readReadLength) then ("--readLength " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(anchorAnchorLength) then ("--anchorLength " +  '"' + anchorAnchorLength + '"') else ""} \
      ~{if defined(topTopHatAnchor) then ("--tophatAnchor " +  '"' + topTopHatAnchor + '"') else ""} \
      ~{if defined(biBi) then ("--bi " +  '"' + biBi + '"') else ""} \
      ~{if defined(nNThread) then ("--nthread " +  '"' + nNThread + '"') else ""} \
      ~{if defined(tTStat) then ("--tstat " +  '"' + tTStat + '"') else ""} \
      ~{if defined(cstCstAt) then ("--cstat " +  '"' + cstCstAt + '"') else ""} \
      ~{true="--statoff" false="" statStatOff} \
      ~{arg2Arg2}
  >>>
}