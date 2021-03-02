version 1.0

task Ctgcns {
  input {
    File? test_computation_contig
    Boolean? recompute_contigs_have
    Boolean? reuse_unitig_consensus
    File? update_tigstore_dump
    File? import_binary_file
    Boolean? show_multialigns
    Boolean? enable_debugging_option
    Int? smoothing_window_size
    String? var_8
    String? g
    String version
    String partition
    String? opts
  }
  command <<<
    ctgcns \
      ~{version} \
      ~{partition} \
      ~{opts} \
      ~{if defined(test_computation_contig) then ("-T " +  '"' + test_computation_contig + '"') else ""} \
      ~{if (recompute_contigs_have) then "-f" else ""} \
      ~{if (reuse_unitig_consensus) then "-U" else ""} \
      ~{if defined(update_tigstore_dump) then ("-O " +  '"' + update_tigstore_dump + '"') else ""} \
      ~{if defined(import_binary_file) then ("-I " +  '"' + import_binary_file + '"') else ""} \
      ~{if (show_multialigns) then "-v" else ""} \
      ~{if (enable_debugging_option) then "-V" else ""} \
      ~{if defined(smoothing_window_size) then ("-w " +  '"' + smoothing_window_size + '"') else ""} \
      ~{if defined(var_8) then ("-t " +  '"' + var_8 + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    test_computation_contig: "Test the computation of the contig layout in 'file'"
    recompute_contigs_have: "Recompute contigs that already have a multialignment"
    reuse_unitig_consensus: "Reuse the unitig consensus for contigs with only a single\\nunitig (EXPERIMENTAL!)"
    update_tigstore_dump: "Don't update tigStore, dump a binary file instead."
    import_binary_file: "Import binary file into tigStore"
    show_multialigns: "Show multialigns."
    enable_debugging_option: "Enable debugging option 'verbosemultialign'."
    smoothing_window_size: "Smoothing window size"
    var_8: ""
    g: ""
    version: ""
    partition: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}