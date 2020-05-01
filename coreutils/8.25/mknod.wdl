version 1.0

task Mknod {
  input {
    String modeMode
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    mknod \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}