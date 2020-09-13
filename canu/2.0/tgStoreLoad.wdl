version 1.0

task TgStoreLoad {
  input {
    File? path_sequence_store
    File? path_add_tigs
    File? load_tigs_files
    Boolean? load_store_just
    Boolean? dump
    Boolean? test
    String v
    String? input_dot_cns
  }
  command <<<
    tgStoreLoad \
      ~{v} \
      ~{input_dot_cns} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_add_tigs) then ("-T " +  '"' + path_add_tigs + '"') else ""} \
      ~{if defined(load_tigs_files) then ("-L " +  '"' + load_tigs_files + '"') else ""} \
      ~{if (load_store_just) then "-n" else ""} \
      ~{if (dump) then "-dump" else ""} \
      ~{if (test) then "-test" else ""}
  >>>
  parameter_meta {
    path_sequence_store: "Path to the sequence store"
    path_add_tigs: "<v>     Path to the tigStore and version to add tigs to"
    load_tigs_files: "Load the tig(s) from files listed in 'file-of-files'\\n(WARNING: program will succeed if this file is empty)"
    load_store_just: "Don't load into store, just report what would have happened"
    dump: "Dump the cns files as ASCII, don't load into store"
    test: "Test the cns files for various errors, don't load into store"
    v: ""
    input_dot_cns: ""
  }
  output {
    File out_stdout = stdout()
  }
}