version 1.0

task JeClip {
  input {
    String? jeJeClipper
  }
  command <<<
    je clip \
      ~{jeJeClipper}
  >>>
}