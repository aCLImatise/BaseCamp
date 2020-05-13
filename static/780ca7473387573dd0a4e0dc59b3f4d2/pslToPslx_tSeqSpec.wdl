version 1.0

task PslToPslxTSeqSpec {
  input {
    String? inInPsl
    String? qQSeqSpec
    String? tseqTseqSpec
    String? outOutPslX
  }
  command <<<
    pslToPslx tSeqSpec \
      ~{inInPsl} \
      ~{qQSeqSpec} \
      ~{tseqTseqSpec} \
      ~{outOutPslX}
  >>>
}