version 1.0

task SjVisualizer.pl {
  input {
    Boolean sS
    Boolean cC
    Boolean bB
    Boolean rR
    Boolean wW
    Boolean zZ
    Boolean oO
    Boolean manMan
  }
  command <<<
    sj_visualizer.pl \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW} \
      ~{true="-z" false="" zZ} \
      ~{true="-o" false="" oO} \
      ~{true="--man" false="" manMan}
  >>>
}