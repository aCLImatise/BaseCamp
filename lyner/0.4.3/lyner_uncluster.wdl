version 1.0

task LynerUncluster {
  input {
    String? optionsOptions
  }
  command <<<
    lyner uncluster \
      ~{optionsOptions}
  >>>
}