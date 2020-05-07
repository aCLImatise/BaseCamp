version 1.0

task GimmeThreshold {
  input {
    Boolean hH
    String? subcommandSubcommand
    String? thresholdThreshold
    String? pfmPfmFile
    String? fFAFile
    String? fprFpr
  }
  command <<<
    gimme threshold \
      ~{subcommandSubcommand} \
      ~{true="-h" false="" hH} \
      ~{thresholdThreshold} \
      ~{pfmPfmFile} \
      ~{fFAFile} \
      ~{fprFpr}
  >>>
}