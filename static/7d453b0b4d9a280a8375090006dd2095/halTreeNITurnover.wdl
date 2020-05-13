version 1.0

task HalTreeNITurnover.py {
  input {
    String conservedConservedBedName
    String rootRoot
    String? halHal
    String? workdirWorkdir
  }
  command <<<
    halTreeNITurnover.py \
      ~{halHal} \
      ~{if defined(conservedConservedBedName) then ("--conservedBedName " +  '"' + conservedConservedBedName + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{workdirWorkdir}
  >>>
}