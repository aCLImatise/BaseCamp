version 1.0

task CdHit2dPara.pl {
  input {
    Boolean iI
    String i2I2
    Boolean oO
    Boolean pP
    Boolean bB
    Boolean lL
    Boolean sS
    String s2S2
    Boolean qQ
    Boolean tT
    Boolean rR
  }
  command <<<
    cd-hit-2d-para.pl \
      ~{true="-i" false="" iI} \
      ~{if defined(i2I2) then ("-i2 " +  '"' + i2I2 + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="--P" false="" pP} \
      ~{true="--B" false="" bB} \
      ~{true="--L" false="" lL} \
      ~{true="--S" false="" sS} \
      ~{if defined(s2S2) then ("--S2 " +  '"' + s2S2 + '"') else ""} \
      ~{true="--Q" false="" qQ} \
      ~{true="--T" false="" tT} \
      ~{true="--R" false="" rR}
  >>>
}