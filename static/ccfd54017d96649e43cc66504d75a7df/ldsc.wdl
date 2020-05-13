version 1.0

task Ldsc.py {
  input {
    Boolean printPrintCov
    Boolean printPrintDeleteVals
    String chunkChunkSize
    Boolean picklePickle
    Boolean yesYesReally
    Boolean invertInvertAnyway
    String nNBlocks
    Boolean notNotM550
    Boolean returnReturnSillyThings
    Boolean noNoCheckAlleles
    String sampSampPrev
    String popPopPrev
  }
  command <<<
    ldsc.py \
      ~{true="--print-cov" false="" printPrintCov} \
      ~{true="--print-delete-vals" false="" printPrintDeleteVals} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{true="--pickle" false="" picklePickle} \
      ~{true="--yes-really" false="" yesYesReally} \
      ~{true="--invert-anyway" false="" invertInvertAnyway} \
      ~{if defined(nNBlocks) then ("--n-blocks " +  '"' + nNBlocks + '"') else ""} \
      ~{true="--not-M-5-50" false="" notNotM550} \
      ~{true="--return-silly-things" false="" returnReturnSillyThings} \
      ~{true="--no-check-alleles" false="" noNoCheckAlleles} \
      ~{if defined(sampSampPrev) then ("--samp-prev " +  '"' + sampSampPrev + '"') else ""} \
      ~{if defined(popPopPrev) then ("--pop-prev " +  '"' + popPopPrev + '"') else ""}
  >>>
}