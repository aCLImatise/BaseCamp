version 1.0

task AMUSED {
  input {
    Boolean ngNg
    Boolean nuNu
    Boolean dsDs
    Boolean nsNs
    Boolean doDo
    Boolean bcBc
    Boolean nNSz
  }
  command <<<
    AMUSED \
      ~{true="-ng" false="" ngNg} \
      ~{true="-nu" false="" nuNu} \
      ~{true="-ds" false="" dsDs} \
      ~{true="-ns" false="" nsNs} \
      ~{true="-do" false="" doDo} \
      ~{true="-bc" false="" bcBc} \
      ~{true="-nsz" false="" nNSz}
  >>>
}