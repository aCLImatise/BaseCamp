version 1.0

task Mfa2xmfaMFA alignment input {
  input {
    String? xXMfaAlignmentOutput
    String? unalignedUnaligned
    String? fastFastA
    String? outputOutput
  }
  command <<<
    mfa2xmfa MFA alignment input \
      ~{xXMfaAlignmentOutput} \
      ~{unalignedUnaligned} \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}