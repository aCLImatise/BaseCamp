version 1.0

task CruxLocalizeModification {
  input {
    String input_psm_file
  }
  command <<<
    crux localize-modification \
      ~{input_psm_file}
  >>>
  parameter_meta {
    input_psm_file: ""
  }
}