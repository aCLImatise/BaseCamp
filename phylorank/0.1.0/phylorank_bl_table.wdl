version 1.0

task PhylorankBlTable {
  input {
    String stepStepSize
    String? inputInputTree
    String? taxTaxOnCategory
    String? outputOutputTable
  }
  command <<<
    phylorank bl_table \
      ~{inputInputTree} \
      ~{if defined(stepStepSize) then ("--step_size " +  '"' + stepStepSize + '"') else ""} \
      ~{taxTaxOnCategory} \
      ~{outputOutputTable}
  >>>
}