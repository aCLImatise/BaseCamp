version 1.0

task Sortmerna {
  input {
    Boolean dbgDbgPutDb
    Boolean cmdCmd
    Boolean taskTask
  }
  command <<<
    sortmerna \
      ~{true="--dbg_put_db" false="" dbgDbgPutDb} \
      ~{true="--cmd" false="" cmdCmd} \
      ~{true="--task" false="" taskTask}
  >>>
}