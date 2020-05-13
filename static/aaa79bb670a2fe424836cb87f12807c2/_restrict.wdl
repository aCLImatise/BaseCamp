version 1.0

task _restrict {
  input {
    Boolean siteSiteLen
    Boolean enzymesEnzymes
  }
  command <<<
    _restrict \
      ~{true="-sitelen" false="" siteSiteLen} \
      ~{true="-enzymes" false="" enzymesEnzymes}
  >>>
}