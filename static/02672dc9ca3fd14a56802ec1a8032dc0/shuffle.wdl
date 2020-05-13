version 1.0

task Shuffle {
  input {
    Boolean lL
    Boolean rR
    String wW
    Boolean iI
    Boolean alignmentAlignment
    Boolean aminoAmino
    Boolean dnaDna
    String inInFormat
    Boolean nodesNodesC
    Boolean qQRna
    String seedSeed
  }
  command <<<
    shuffle \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="--alignment" false="" alignmentAlignment} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--nodesc" false="" nodesNodesC} \
      ~{true="--qrna" false="" qQRna} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}