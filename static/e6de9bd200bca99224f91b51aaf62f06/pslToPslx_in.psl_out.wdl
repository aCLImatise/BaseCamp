version 1.0

task PslToPslxIn.pslOut.pslx {
  input {
    String? qQSeqSpec
    String? tseqTseqSpec
    String? outOutPslX
  }
  command <<<
    pslToPslx in.psl out.pslx \
      ~{qQSeqSpec} \
      ~{tseqTseqSpec} \
      ~{outOutPslX}
  >>>
}