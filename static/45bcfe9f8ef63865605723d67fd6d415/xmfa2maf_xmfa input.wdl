version 1.0

task Xmfa2mafXmfa input {
  input {
    String? mafMafOutput
  }
  command <<<
    xmfa2maf xmfa input \
      ~{mafMafOutput}
  >>>
}