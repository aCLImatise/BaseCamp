version 1.0

task HgFakeAgpInput.fa {
  input {
    String? outputOutputAgp
  }
  command <<<
    hgFakeAgp input.fa \
      ~{outputOutputAgp}
  >>>
}