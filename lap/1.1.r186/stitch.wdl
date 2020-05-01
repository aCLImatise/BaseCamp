version 1.0

task Stitch {
  input {
    Boolean outOutIe
    String? optionOption
  }
  command <<<
    stitch \
      ~{optionOption} \
      ~{true="--outie" false="" outOutIe}
  >>>
}