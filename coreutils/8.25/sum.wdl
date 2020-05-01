version 1.0

task Sum {
  input {
    Boolean rR
    Boolean sysvSysv
  }
  command <<<
    sum \
      ~{true="-r" false="" rR} \
      ~{true="--sysv" false="" sysvSysv}
  >>>
}