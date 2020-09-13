version 1.0

task SegmentationfoldutilsFilterbyenergy {
  input {
    Float? energy
    String utput_file_larger_or_equal
  }
  command <<<
    segmentation_fold_utils filter_by_energy \
      ~{utput_file_larger_or_equal} \
      ~{if defined(energy) then ("--energy " +  '"' + energy + '"') else ""}
  >>>
  parameter_meta {
    energy: "Entries with transitions with energy smaller than energy\\n(< e) or without transitions will be put into\\nDBN_OUTPUT_FILE_LARGER_OR_EQUAL and those larger or\\nequal (>= e) to DBN_OUTPUT_FILE_SMALLER"
    utput_file_larger_or_equal: "DBN_OUTPUT_FILE_SMALLER"
  }
  output {
    File out_stdout = stdout()
  }
}