version 1.0

task MauveToXMFAMauve Alignment input {
  input {
    String? xXMfaOutput
  }
  command <<<
    mauveToXMFA Mauve Alignment input \
      ~{xXMfaOutput}
  >>>
}