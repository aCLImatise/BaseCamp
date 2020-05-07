version 1.0

task _remap {
  input {
    Boolean enzymesEnzymes
    Boolean siteSiteLen
  }
  command <<<
    _remap \
      ~{true="-enzymes" false="" enzymesEnzymes} \
      ~{true="-sitelen" false="" siteSiteLen}
  >>>
}