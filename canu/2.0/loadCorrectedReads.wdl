version 1.0

task LoadCorrectedReads {
  input {
    File? path_sequence_store
    File? path_correction_store
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
      ~{if (also_load_layout) then "-u" else ""}
  >>>
  parameter_meta {
    path_sequence_store: "Path to a sequence store"
    path_correction_store: "Path to a correction store"
    load_tigs_files: "Load the tig(s) from files listed in 'file-of-files'\\n(WARNING: program will succeed if this file is empty)"
    also_load_layout: "Also load the populated tig layout into version 2 of the corStore.\\n(WARNING: not rigorously tested)"
    input_dot_cns: ""
  }
  output {
    File out_stdout = stdout()
  }
}