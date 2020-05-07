version 1.0

task StringiphyExons.gff {
  input {
    String? optionsOptions
    String? exonsExonsGff
  }
  command <<<
    stringiphy exons.gff \
      ~{optionsOptions} \
      ~{exonsExonsGff}
  >>>
}