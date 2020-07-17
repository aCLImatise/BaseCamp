version 1.0

task LoadCorrectedReads {
  input {
    String? path_sequence_store
    String? path_correction_store
    File? load_tigs_files
    Boolean? also_load_layout
    String? input_dot_cns
  }
  command <<<
    loadCorrectedReads \
      ~{input_dot_cns} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_correction_store) then ("-C " +  '"' + path_correction_store + '"') else ""} \
      ~{if defined(load_tigs_files) then ("-L " +  '"' + load_tigs_files + '"') else ""} \
      ~{true="-u" false="" also_load_layout}
  >>>
  parameter_meta {
    path_sequence_store: "Path to a sequence store"
    path_correction_store: "Path to a correction store"
    load_tigs_files: "Load the tig(s) from files listed in 'file-of-files' (WARNING: program will succeed if this file is empty)"
    also_load_layout: "Also load the populated tig layout into version 2 of the corStore. (WARNING: not rigorously tested)"
    input_dot_cns: ""
  }
}