version 1.0

task LoadTrimmedReads {
  input {
    File? path_sequence_store
    File? path_file_clear
    Boolean? report_range_changes
    Boolean? do_apply_changes
    String? test_norm
    String? test_comp
  }
  command <<<
    loadTrimmedReads \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_file_clear) then ("-c " +  '"' + path_file_clear + '"') else ""} \
      ~{if (report_range_changes) then "-v" else ""} \
      ~{if (do_apply_changes) then "-n" else ""} \
      ~{if defined(test_norm) then ("-testnorm " +  '"' + test_norm + '"') else ""} \
      ~{if defined(test_comp) then ("-testcomp " +  '"' + test_comp + '"') else ""}
  >>>
  parameter_meta {
    path_sequence_store: "Path to the sequence store"
    path_file_clear: "Path to the file of clear ranges"
    report_range_changes: "Report clear range changes to stderr"
    do_apply_changes: "Don't apply changes"
    test_norm: "e s       Test translating trim points between"
    test_comp: "e s       normal and compressed sequences.  's' must\\nbe normal (uncompressed) sequence."
  }
  output {
    File out_stdout = stdout()
  }
}