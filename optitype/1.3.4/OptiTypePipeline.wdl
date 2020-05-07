version 1.0

task OptiTypePipeline.py {
  input {
    Array[String]+ inputInput
    Boolean rnaRna
    Boolean dnaDna
    String betaBeta
    String enumerateEnumerate
    String outdirOutdir
    String prefixPrefix
    Boolean verboseVerbose
    String configConfig
  }
  command <<<
    OptiTypePipeline.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(enumerateEnumerate) then ("--enumerate " +  '"' + enumerateEnumerate + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""}
  >>>
}