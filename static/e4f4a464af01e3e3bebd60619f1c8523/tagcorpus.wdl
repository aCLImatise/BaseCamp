version 1.0

task Tagcorpus {
  input {
    String? optionsOptions
  }
  command <<<
    tagcorpus \
      ~{optionsOptions}
  >>>
}