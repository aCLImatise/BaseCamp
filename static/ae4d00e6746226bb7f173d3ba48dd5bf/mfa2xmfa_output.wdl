version 1.0

task Mfa2xmfaOutput {
  input {
    String? mfaMfaAlignmentInput
    String? xXMfaAlignmentOutput
    String? unalignedUnaligned
    String? fastFastA
    String? outputOutput
  }
  command <<<
    mfa2xmfa output \
      ~{mfaMfaAlignmentInput} \
      ~{xXMfaAlignmentOutput} \
      ~{unalignedUnaligned} \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}