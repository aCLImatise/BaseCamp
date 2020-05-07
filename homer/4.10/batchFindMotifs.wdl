version 1.0

task BatchFindMotifs.pl {
  input {
    Boolean cpuCpu
  }
  command <<<
    batchFindMotifs.pl \
      ~{true="-cpu" false="" cpuCpu}
  >>>
}