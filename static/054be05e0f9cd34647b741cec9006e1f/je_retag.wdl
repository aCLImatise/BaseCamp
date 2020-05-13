version 1.0

task JeRetag {
  input {
    String? actActGtac
  }
  command <<<
    je retag \
      ~{actActGtac}
  >>>
}