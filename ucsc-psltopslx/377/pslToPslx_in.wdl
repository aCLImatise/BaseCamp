version 1.0

task PslToPslxIn.pslTSeqSpec {
  input {
    String? qQSeqSpec
    String? tseqTseqSpec
    String? outOutPslX
  }
  command <<<
    pslToPslx in.psl tSeqSpec \
      ~{qQSeqSpec} \
      ~{tseqTseqSpec} \
      ~{outOutPslX}
  >>>
}