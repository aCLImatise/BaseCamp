version 1.0

task Xmfa2mafMaf output {
  input {
    String? xXMfaInput
    String? mafMafOutput
  }
  command <<<
    xmfa2maf maf output \
      ~{xXMfaInput} \
      ~{mafMafOutput}
  >>>
}