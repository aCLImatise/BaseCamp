version 1.0

task CruxLocalizeModification {
  input {
    String? inputInputPsmFile
  }
  command <<<
    crux localize-modification \
      ~{inputInputPsmFile}
  >>>
}