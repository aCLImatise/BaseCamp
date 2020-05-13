version 1.0

task Hmmeralign {
  input {
    String oO
    String mapMapAli
    Boolean trimTrim
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
    String inInFormat
    String outOutFormat
  }
  command <<<
    hmmeralign \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mapMapAli) then ("--mapali " +  '"' + mapMapAli + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""}
  >>>
}