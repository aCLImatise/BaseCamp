version 1.0

task Mfa2xmfaFastA {
  input {
    String? mfaMfaAlignmentInput
    String? xXMfaAlignmentOutput
    String? unalignedUnaligned
    String? fastFastA
    String? outputOutput
  }
  command <<<
    mfa2xmfa FastA \
      ~{mfaMfaAlignmentInput} \
      ~{xXMfaAlignmentOutput} \
      ~{unalignedUnaligned} \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}