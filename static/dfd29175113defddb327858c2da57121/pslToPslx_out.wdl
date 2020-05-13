version 1.0

task PslToPslxOut.pslx {
  input {
    String? inInPsl
    String? qQSeqSpec
    String? tseqTseqSpec
    String? outOutPslX
  }
  command <<<
    pslToPslx out.pslx \
      ~{inInPsl} \
      ~{qQSeqSpec} \
      ~{tseqTseqSpec} \
      ~{outOutPslX}
  >>>
}