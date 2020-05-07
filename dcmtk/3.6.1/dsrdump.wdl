version 1.0

task Dsrdump {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean fF
    Boolean tT
    Boolean tdTd
    Boolean teTe
    Boolean tbTb
    Boolean tiTi
    Boolean ipIp
    Boolean erEr
    Boolean evEv
    Boolean ecEc
    Boolean eeEe
    Boolean eiEi
    Boolean dvDv
    Boolean pnPn
    Boolean pePe
    Boolean cC
    String? dsrDsrFileIn
  }
  command <<<
    dsrdump \
      ~{dsrDsrFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-td" false="" tdTd} \
      ~{true="-te" false="" teTe} \
      ~{true="-tb" false="" tbTb} \
      ~{true="-ti" false="" tiTi} \
      ~{true="-Ip" false="" ipIp} \
      ~{true="-Er" false="" erEr} \
      ~{true="-Ev" false="" evEv} \
      ~{true="-Ec" false="" ecEc} \
      ~{true="-Ee" false="" eeEe} \
      ~{true="-Ei" false="" eiEi} \
      ~{true="-Dv" false="" dvDv} \
      ~{true="-Pn" false="" pnPn} \
      ~{true="-Pe" false="" pePe} \
      ~{true="-C" false="" cC}
  >>>
}