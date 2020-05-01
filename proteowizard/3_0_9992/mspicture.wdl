version 1.0

task Mspicture {
  input {
    Boolean oO
    Boolean cC
    Boolean lL
    String mzMzLow
    String mzMzHigh
    String timescaleTimescale
    Boolean bB
    Boolean tT
    Boolean sS
    Boolean zZ
    Boolean wW
    Boolean bryBry
    Boolean greyGrey
    Boolean binBinSum
    Boolean mM
    String shapeShape
    Boolean pP
    Boolean iI
    Boolean fF
    Boolean xX
    Boolean vV
    String? inputInputFilenames
  }
  command <<<
    mspicture \
      ~{inputInputFilenames} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{if defined(mzMzLow) then ("--mzLow " +  '"' + mzMzLow + '"') else ""} \
      ~{if defined(mzMzHigh) then ("--mzHigh " +  '"' + mzMzHigh + '"') else ""} \
      ~{if defined(timescaleTimescale) then ("--timeScale " +  '"' + timescaleTimescale + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="-z" false="" zZ} \
      ~{true="-w" false="" wW} \
      ~{true="--bry" false="" bryBry} \
      ~{true="--grey" false="" greyGrey} \
      ~{true="--binSum" false="" binBinSum} \
      ~{true="-m" false="" mM} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-i" false="" iI} \
      ~{true="-f" false="" fF} \
      ~{true="-x" false="" xX} \
      ~{true="-v" false="" vV}
  >>>
}