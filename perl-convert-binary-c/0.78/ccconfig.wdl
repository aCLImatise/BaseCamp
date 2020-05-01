version 1.0

task Ccconfig {
  input {
    Boolean incIncPath
    Boolean preprocessPreprocess
    Boolean compileCompileObj
    Boolean compileCompileExe
    Boolean cCExt
    Boolean ppPpExt
    Boolean objObjExt
    Boolean exeExeExt
    Boolean noNoDelete
    Boolean noNoRun
    Boolean quietQuiet
    Boolean noNoStatus
    Boolean debugDebug
  }
  command <<<
    ccconfig \
      ~{true="--inc-path" false="" incIncPath} \
      ~{true="--preprocess" false="" preprocessPreprocess} \
      ~{true="--compile-obj" false="" compileCompileObj} \
      ~{true="--compile-exe" false="" compileCompileExe} \
      ~{true="--c-ext" false="" cCExt} \
      ~{true="--pp-ext" false="" ppPpExt} \
      ~{true="--obj-ext" false="" objObjExt} \
      ~{true="--exe-ext" false="" exeExeExt} \
      ~{true="--nodelete" false="" noNoDelete} \
      ~{true="--norun" false="" noNoRun} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--nostatus" false="" noNoStatus} \
      ~{true="--debug" false="" debugDebug}
  >>>
}