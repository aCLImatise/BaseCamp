version 1.0

task Supersim {
  input {
    String outOutFiles
    Boolean nNPop
    Boolean nNInd
    String nNSites
    String erErRate
    Boolean depthDepth
    Boolean pPVar
    Boolean mMFreq
    Boolean fF
    Boolean modelModel
    Boolean simplerSimplerAnd
    Boolean baseBaseFreq
  }
  command <<<
    supersim \
      ~{if defined(outOutFiles) then ("-outfiles " +  '"' + outOutFiles + '"') else ""} \
      ~{true="-npop" false="" nNPop} \
      ~{true="-nind" false="" nNInd} \
      ~{if defined(nNSites) then ("-nsites " +  '"' + nNSites + '"') else ""} \
      ~{if defined(erErRate) then ("-errate " +  '"' + erErRate + '"') else ""} \
      ~{true="-depth" false="" depthDepth} \
      ~{true="-pvar" false="" pPVar} \
      ~{true="-mfreq" false="" mMFreq} \
      ~{true="-F" false="" fF} \
      ~{true="-model" false="" modelModel} \
      ~{true="-simpleRand" false="" simplerSimplerAnd} \
      ~{true="-base_freq" false="" baseBaseFreq}
  >>>
}