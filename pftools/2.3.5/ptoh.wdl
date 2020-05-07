version 1.0

task Ptoh {
  input {
    Boolean fF
    Boolean sS
    Boolean fF
    Boolean dD
    Boolean iI
    Boolean lL
  }
  command <<<
    ptoh \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-D" false="" dD} \
      ~{true="-I" false="" iI} \
      ~{true="-L" false="" lL}
  >>>
}