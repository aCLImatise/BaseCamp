version 1.0

task CruxLocalizemodification {
  command <<<
    crux localize_modification
  >>>
  output {
    File out_stdout = stdout()
  }
}