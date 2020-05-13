version 1.0

task EaselFilter {
  input {
    String oO
    String inInFormat
    String outOutFormat
    Boolean dnaDna
    Boolean rnaRna
    Boolean aminoAmino
    Boolean ignoreIgnoreRf
    String fragFragThresh
    String symSymFrac
    Boolean noNoSampling
    String nsNsAmp
    String sampSampThresh
    String maxMaxFrag
    String sS
    Boolean consConsCover
    Boolean randRandOrder
    Boolean origOrigOrder
  }
  command <<<
    easel filter \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--ignore-rf" false="" ignoreIgnoreRf} \
      ~{if defined(fragFragThresh) then ("--fragthresh " +  '"' + fragFragThresh + '"') else ""} \
      ~{if defined(symSymFrac) then ("--symfrac " +  '"' + symSymFrac + '"') else ""} \
      ~{true="--no-sampling" false="" noNoSampling} \
      ~{if defined(nsNsAmp) then ("--nsamp " +  '"' + nsNsAmp + '"') else ""} \
      ~{if defined(sampSampThresh) then ("--sampthresh " +  '"' + sampSampThresh + '"') else ""} \
      ~{if defined(maxMaxFrag) then ("--maxfrag " +  '"' + maxMaxFrag + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="--conscover" false="" consConsCover} \
      ~{true="--randorder" false="" randRandOrder} \
      ~{true="--origorder" false="" origOrigOrder}
  >>>
}