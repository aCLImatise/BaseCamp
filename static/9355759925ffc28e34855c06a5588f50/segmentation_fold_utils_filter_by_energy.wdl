version 1.0

task SegmentationFoldUtilsFilterByEnergy {
  input {
    Float? energy
    String dbn_input_file
    String dbn_o
  }
  command <<<
    segmentation-fold-utils filter-by-energy \
      ~{dbn_input_file} \
      ~{dbn_o} \
      ~{if defined(energy) then ("--energy " +  '"' + energy + '"') else ""}
  >>>
  parameter_meta {
    energy: "Entries with transitions with energy smaller than energy (< e) or without transitions will be put into DBN_OUTPUT_FILE_LARGER_OR_EQUAL and those larger or equal (>= e) to DBN_OUTPUT_FILE_SMALLER"
    dbn_input_file: ""
    dbn_o: ""
  }
}