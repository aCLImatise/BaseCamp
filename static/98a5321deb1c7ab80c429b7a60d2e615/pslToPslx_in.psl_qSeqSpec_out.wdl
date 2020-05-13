version 1.0

task PslToPslxIn.pslQSeqSpecOut.pslx {
  input {
    String? tseqTseqSpec
    String? outOutPslX
  }
  command <<<
    pslToPslx in.psl qSeqSpec out.pslx \
      ~{tseqTseqSpec} \
      ~{outOutPslX}
  >>>
}