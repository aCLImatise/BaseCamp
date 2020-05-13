version 1.0

task SegmentationFoldUtilsFilterByEnergy {
  input {
    Float energyEnergy
  }
  command <<<
    segmentation-fold-utils filter-by-energy \
      ~{if defined(energyEnergy) then ("--energy " +  '"' + energyEnergy + '"') else ""}
  >>>
}