version 1.0

task MauveToXMFAXMFA output {
  input {
    String? mauveMauveAlignmentInput
    String? xXMfaOutput
  }
  command <<<
    mauveToXMFA XMFA output \
      ~{mauveMauveAlignmentInput} \
      ~{xXMfaOutput}
  >>>
}