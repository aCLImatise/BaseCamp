version 1.0

task 7zr {
  input {
    Boolean aAI
    Boolean aAX
    Boolean aoAo
    Boolean anAn
    Boolean bbBb
    Boolean bdBd
    Boolean bsBs
    Boolean btBt
    Boolean iI
    Boolean mM
    Boolean oO
    Boolean rR
    Boolean saSa
    Boolean sccScc
    Boolean scsScs
    Boolean scrcScrc
    Boolean sSDel
    Boolean semSemL
    Boolean sfxSfx
    Boolean siSi
    Boolean slpSlp
    Boolean sltSlt
    Boolean snhSnh
    Boolean snlSnl
    Boolean sniSni
    Boolean snsSns
    Boolean soSo
    Boolean spdSpd
    Boolean speSpe
    Boolean spfSpf
    Boolean sscSsc
    Boolean sswSsw
    Boolean stlStl
    Boolean stmStm
    Boolean stxStx
    Boolean tT
    Boolean uU
    Boolean vV
    Boolean wW
    Boolean xX
    Boolean yY
  }
  command <<<
    7zr \
      ~{true="-ai" false="" aAI} \
      ~{true="-ax" false="" aAX} \
      ~{true="-ao" false="" aoAo} \
      ~{true="-an" false="" anAn} \
      ~{true="-bb" false="" bbBb} \
      ~{true="-bd" false="" bdBd} \
      ~{true="-bs" false="" bsBs} \
      ~{true="-bt" false="" btBt} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-sa" false="" saSa} \
      ~{true="-scc" false="" sccScc} \
      ~{true="-scs" false="" scsScs} \
      ~{true="-scrc" false="" scrcScrc} \
      ~{true="-sdel" false="" sSDel} \
      ~{true="-seml" false="" semSemL} \
      ~{true="-sfx" false="" sfxSfx} \
      ~{true="-si" false="" siSi} \
      ~{true="-slp" false="" slpSlp} \
      ~{true="-slt" false="" sltSlt} \
      ~{true="-snh" false="" snhSnh} \
      ~{true="-snl" false="" snlSnl} \
      ~{true="-sni" false="" sniSni} \
      ~{true="-sns" false="" snsSns} \
      ~{true="-so" false="" soSo} \
      ~{true="-spd" false="" spdSpd} \
      ~{true="-spe" false="" speSpe} \
      ~{true="-spf" false="" spfSpf} \
      ~{true="-ssc" false="" sscSsc} \
      ~{true="-ssw" false="" sswSsw} \
      ~{true="-stl" false="" stlStl} \
      ~{true="-stm" false="" stmStm} \
      ~{true="-stx" false="" stxStx} \
      ~{true="-t" false="" tT} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{true="-w" false="" wW} \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY}
  >>>
}