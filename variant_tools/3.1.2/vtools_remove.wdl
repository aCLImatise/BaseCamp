version 1.0

task VtoolsRemove {
  input {
    Boolean vV
    String? itemsItems
  }
  command <<<
    vtools remove \
      ~{itemsItems} \
      ~{true="-v" false="" vV}
  >>>
}