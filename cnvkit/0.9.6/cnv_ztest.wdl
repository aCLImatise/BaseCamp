version 1.0

task CnvZtest.py {
  input {
    File segmentSegment
    String alphaAlpha
    Boolean targetTarget
    Boolean haploidHaploidXReference
    String sampleSampleSex
    String outputOutput
    String? cCNarr
  }
  command <<<
    cnv_ztest.py \
      ~{cCNarr} \
      ~{if defined(segmentSegment) then ("--segment " +  '"' + segmentSegment + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{true="--target" false="" targetTarget} \
      ~{true="--haploid-x-reference" false="" haploidHaploidXReference} \
      ~{if defined(sampleSampleSex) then ("--sample-sex " +  '"' + sampleSampleSex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}