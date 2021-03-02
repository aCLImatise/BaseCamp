version 1.0

task TgStoreLoad {
  input {
    File? path_sequence_store
    File? path_tigstore_version
    File? load_tigs_files
    Boolean? load_just_report
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
      ~{if defined(path_tigstore_version) then ("-T " +  '"' + path_tigstore_version + '"') else ""} \
      ~{if defined(load_tigs_files) then ("-L " +  '"' + load_tigs_files + '"') else ""} \
      ~{if (load_just_report) then "-n" else ""} \
      ~{if (dump) then "-dump" else ""} \
      ~{if (test) then "-test" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    path_sequence_store: "Path to the sequence store"
    path_tigstore_version: "<v>     Path to the tigStore and version to add tigs to"
    load_tigs_files: "Load the tig(s) from files listed in 'file-of-files'\\n(WARNING: program will succeed if this file is empty)"
    load_just_report: "Don't load into store, just report what would have happened"
    dump: "Dump the cns files as ASCII, don't load into store"
    test: "Test the cns files for various errors, don't load into store"
    v: ""
    input_dot_cns: ""
  }
  output {
    File out_stdout = stdout()
  }
}