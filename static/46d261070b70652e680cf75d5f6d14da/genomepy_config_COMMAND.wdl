version 1.0

task GenomepyConfigCOMMAND {
  input {
    String? optionsOptions
    String? commandCommand
  }
  command <<<
    genomepy config COMMAND \
      ~{optionsOptions} \
      ~{commandCommand}
  >>>
}