version 1.0

task IvarVariants {
  input {
    Boolean qQ
    Boolean tT
    Boolean mM
    Boolean rR
    Boolean gG
    Boolean pP
  }
  command <<<
    ivar variants \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP}
  >>>
}