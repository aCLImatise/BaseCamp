version 1.0

task Msa2prfl.pl {
  input {
    Boolean relaxRelax
    String blockBlockScoreFile
    String setnameSetname
    String setSetDesc
    String setSetAcc
    String infoInfo
  }
  command <<<
    msa2prfl.pl \
      ~{true="--relax" false="" relaxRelax} \
      ~{if defined(blockBlockScoreFile) then ("--blockscorefile " +  '"' + blockBlockScoreFile + '"') else ""} \
      ~{if defined(setnameSetname) then ("--setname " +  '"' + setnameSetname + '"') else ""} \
      ~{if defined(setSetDesc) then ("--setdesc " +  '"' + setSetDesc + '"') else ""} \
      ~{if defined(setSetAcc) then ("--setacc " +  '"' + setSetAcc + '"') else ""} \
      ~{if defined(infoInfo) then ("--info " +  '"' + infoInfo + '"') else ""}
  >>>
}