version 1.0

task Mfa2xmfaXMFA alignment output {
  input {
    String? mfaMfaAlignmentInput
    String? xXMfaAlignmentOutput
    String? unalignedUnaligned
    String? fastFastA
    String? outputOutput
  }
  command <<<
    mfa2xmfa XMFA alignment output \
      ~{mfaMfaAlignmentInput} \
      ~{xXMfaAlignmentOutput} \
      ~{unalignedUnaligned} \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}