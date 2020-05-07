version 1.0

task GenblastG {
  input {
    Boolean pP
    Boolean pP
    Boolean qQ
    Boolean tT
    Boolean eE
    Boolean gG
    Boolean fF
    Boolean wW
    Boolean aA
    Boolean dD
    Boolean rR
    Boolean cC
    Boolean sS
    String sSCodon
    Boolean iI
    Boolean xX
    Boolean nN
    Boolean vV
    Boolean jJ
    Boolean noNoRepair
    Boolean reRe
    Boolean rmRm
    Boolean rlRl
    Boolean rsRs
    Boolean rdRd
    Boolean oO
    Boolean gffGff
    Boolean cdnaCdna
    Boolean proPro
    Boolean idId
    Boolean bB
    Boolean pidPid
  }
  command <<<
    genblastG \
      ~{true="-P" false="" pP} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{true="-e" false="" eE} \
      ~{true="-g" false="" gG} \
      ~{true="-f" false="" fF} \
      ~{true="-W" false="" wW} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{if defined(sSCodon) then ("-scodon " +  '"' + sSCodon + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-x" false="" xX} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{true="-j" false="" jJ} \
      ~{true="-norepair" false="" noNoRepair} \
      ~{true="-re" false="" reRe} \
      ~{true="-rm" false="" rmRm} \
      ~{true="-rl" false="" rlRl} \
      ~{true="-rs" false="" rsRs} \
      ~{true="-rd" false="" rdRd} \
      ~{true="-o" false="" oO} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-cdna" false="" cdnaCdna} \
      ~{true="-pro" false="" proPro} \
      ~{true="-id" false="" idId} \
      ~{true="-b" false="" bB} \
      ~{true="-pid" false="" pidPid}
  >>>
}