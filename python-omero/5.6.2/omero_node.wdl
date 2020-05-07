version 1.0

task OmeroNode {
  input {
    Boolean foregroundForeground
    String? startStart
    String? stopStop
    String? statusStatus
    String? restartRestart
  }
  command <<<
    omero node \
      ~{startStart} \
      ~{true="--foreground" false="" foregroundForeground} \
      ~{stopStop} \
      ~{statusStatus} \
      ~{restartRestart}
  >>>
}