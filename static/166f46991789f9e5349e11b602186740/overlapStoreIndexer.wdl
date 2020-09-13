version 1.0

task OverlapStoreIndexer {
  input {
    File? path_overlap_store
    Int? number_slices_used
    String? explicitly_test_index
    Boolean? when_testing_also
    Boolean? delete
  }
  command <<<
    overlapStoreIndexer \
      ~{if defined(path_overlap_store) then ("-o " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(number_slices_used) then ("-F " +  '"' + number_slices_used + '"') else ""} \
      ~{if defined(explicitly_test_index) then ("-t " +  '"' + explicitly_test_index + '"') else ""} \
      ~{if (when_testing_also) then "-f" else ""} \
      ~{if (delete) then "-delete" else ""}
  >>>
  parameter_meta {
    path_overlap_store: "path to overlap store to build the final index for"
    number_slices_used: "number of slices used in bucketizing/sorting"
    explicitly_test_index: "explicitly test a previously constructed index"
    when_testing_also: "when testing, also create a new 'idx.fixed' which might resolve\\nrare problems"
    delete: "remove intermediate files when the index is successfully created"
  }
  output {
    File out_stdout = stdout()
  }
}