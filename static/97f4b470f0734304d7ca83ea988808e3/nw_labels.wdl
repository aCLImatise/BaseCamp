version 1.0

task NwLabels {
  input {
    Boolean iI
    Boolean lL
    Boolean rR
    Boolean tT
  }
  command <<<
    nw_labels \
      ~{true="-I" false="" iI} \
      ~{true="-L" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT}
  >>>
}