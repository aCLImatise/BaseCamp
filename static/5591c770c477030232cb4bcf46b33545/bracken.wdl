version 1.0

task Bracken {
  input {
    String? myMyDb
    String? inputInput
    String? outputOutput
    String? outOutReport
    String? readReadLen
    String? levelLevel
    String? thresholdThreshold
  }
  command <<<
    bracken \
      ~{myMyDb} \
      ~{inputInput} \
      ~{outputOutput} \
      ~{outOutReport} \
      ~{readReadLen} \
      ~{levelLevel} \
      ~{thresholdThreshold}
  >>>
}