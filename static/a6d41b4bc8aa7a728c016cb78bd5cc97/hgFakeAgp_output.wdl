version 1.0

task HgFakeAgpOutput.agp {
  input {
    String? inputInputFa
    String? outputOutputAgp
  }
  command <<<
    hgFakeAgp output.agp \
      ~{inputInputFa} \
      ~{outputOutputAgp}
  >>>
}