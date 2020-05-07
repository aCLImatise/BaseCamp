version 1.0

task AMAS.pyCommand {
  input {
    String? concatConcat
    String? convertConvert
    String? replicateReplicate
    String? splitSplit
    String? summarySummary
    String? removeRemove
    String? commandCommand
  }
  command <<<
    AMAS.py command \
      ~{concatConcat} \
      ~{commandCommand} \
      ~{convertConvert} \
      ~{replicateReplicate} \
      ~{splitSplit} \
      ~{summarySummary} \
      ~{removeRemove}
  >>>
}