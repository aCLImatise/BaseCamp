version 1.0

task Ifdata {
  input {
    Boolean eE
    Boolean pP
    Boolean pePe
    Boolean paPa
    Boolean pnPn
    Boolean pnPn
    Boolean pbPb
    Boolean pmPm
    Boolean phPh
    Boolean pfPf
    Boolean siSi
    Boolean sipSip
    Boolean sibSib
    Boolean sieSie
    Boolean sidSid
    Boolean sSIf
    Boolean sicSic
    Boolean simSim
    Boolean soSo
    Boolean sopSop
    Boolean sobSob
    Boolean soeSoe
    Boolean sodSod
    Boolean sSOf
    Boolean soxSox
    Boolean socSoc
    Boolean somSom
    Boolean bipsBips
    Boolean bopsBops
  }
  command <<<
    ifdata \
      ~{true="-e" false="" eE} \
      ~{true="-p" false="" pP} \
      ~{true="-pe" false="" pePe} \
      ~{true="-pa" false="" paPa} \
      ~{true="-pn" false="" pnPn} \
      ~{true="-pN" false="" pnPn} \
      ~{true="-pb" false="" pbPb} \
      ~{true="-pm" false="" pmPm} \
      ~{true="-ph" false="" phPh} \
      ~{true="-pf" false="" pfPf} \
      ~{true="-si" false="" siSi} \
      ~{true="-sip" false="" sipSip} \
      ~{true="-sib" false="" sibSib} \
      ~{true="-sie" false="" sieSie} \
      ~{true="-sid" false="" sidSid} \
      ~{true="-sif" false="" sSIf} \
      ~{true="-sic" false="" sicSic} \
      ~{true="-sim" false="" simSim} \
      ~{true="-so" false="" soSo} \
      ~{true="-sop" false="" sopSop} \
      ~{true="-sob" false="" sobSob} \
      ~{true="-soe" false="" soeSoe} \
      ~{true="-sod" false="" sodSod} \
      ~{true="-sof" false="" sSOf} \
      ~{true="-sox" false="" soxSox} \
      ~{true="-soc" false="" socSoc} \
      ~{true="-som" false="" somSom} \
      ~{true="-bips" false="" bipsBips} \
      ~{true="-bops" false="" bopsBops}
  >>>
}