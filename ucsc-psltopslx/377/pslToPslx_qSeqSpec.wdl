version 1.0

task PslToPslxQSeqSpec {
  input {
    String? inInPsl
    String? qQSeqSpec
    String? tseqTseqSpec
    String? outOutPslX
  }
  command <<<
    pslToPslx qSeqSpec \
      ~{inInPsl} \
      ~{qQSeqSpec} \
      ~{tseqTseqSpec} \
      ~{outOutPslX}
  >>>
}