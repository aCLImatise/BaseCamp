version 1.0

task LoadErates {
  input {
    File? path_overlap_store
    File? path_sequence_store
    File? list_evalue_files
    String? evalue_file
  }
  command <<<
    loadErates \
      ~{evalue_file} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(list_evalue_files) then ("-L " +  '"' + list_evalue_files + '"') else ""}
  >>>
  parameter_meta {
    path_overlap_store: "path to the overlap store to create"
    path_sequence_store: "path to a sequence store"
    list_evalue_files: "a list of evalue files in 'fileList'"
    evalue_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}