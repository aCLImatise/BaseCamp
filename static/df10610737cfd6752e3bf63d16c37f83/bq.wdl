version 1.0

task Bq {
  input {
    Boolean globalGlobalFlags
    Boolean commandCommandFlags
    String? bqBqPy
    String? commandCommand
    String? argsArgs
  }
  command <<<
    bq \
      ~{bqBqPy} \
      ~{true="--global_flags" false="" globalGlobalFlags} \
      ~{true="--command_flags" false="" commandCommandFlags} \
      ~{commandCommand} \
      ~{argsArgs}
  >>>
}