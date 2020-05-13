version 1.0

task CactusFastaSoftmaskIntervals.py {
  input {
    String chromChrom
    String originOrigin
    String wrapWrap
    String maskMask
    Boolean unmaskUnmask
  }
  command <<<
    cactus_fasta_softmask_intervals.py \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(originOrigin) then ("--origin " +  '"' + originOrigin + '"') else ""} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{true="--unmask" false="" unmaskUnmask}
  >>>
}