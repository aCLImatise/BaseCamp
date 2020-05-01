version 1.0

task Mkfifo {
  input {
    String modeMode
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    mkfifo \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}