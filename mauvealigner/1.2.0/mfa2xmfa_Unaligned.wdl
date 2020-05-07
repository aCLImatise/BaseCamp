version 1.0

task Mfa2xmfaUnaligned {
  input {
    String? mfaMfaAlignmentInput
    String? xXMfaAlignmentOutput
    String? unalignedUnaligned
    String? fastFastA
    String? outputOutput
  }
  command <<<
    mfa2xmfa Unaligned \
      ~{mfaMfaAlignmentInput} \
      ~{xXMfaAlignmentOutput} \
      ~{unalignedUnaligned} \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}