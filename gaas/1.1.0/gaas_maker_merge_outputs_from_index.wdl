version 1.0

task GaasMakerMergeOutputsFromIndex.pl {
  input {
    String? mustMust
    String? beBe
    String? executedExecuted
    String? inIn
    String? theThe
    Directory? folderFolder
    String? fromFrom
    String? whichWhich
    String? makerMaker
    String? wasWas
    String? runRun
    String? andAnd
    String? willWill
    String? findFind
    String? theThe
    String? makerMaker
    String? outputOutput
  }
  command <<<
    gaas_maker_merge_outputs_from_index.pl \
      ~{mustMust} \
      ~{beBe} \
      ~{executedExecuted} \
      ~{inIn} \
      ~{theThe} \
      ~{folderFolder} \
      ~{fromFrom} \
      ~{whichWhich} \
      ~{makerMaker} \
      ~{wasWas} \
      ~{runRun} \
      ~{andAnd} \
      ~{willWill} \
      ~{findFind} \
      ~{theThe} \
      ~{makerMaker} \
      ~{outputOutput}
  >>>
}