version 1.0

task Utgcns {
  input {
    File? test_computation_unitig
    Boolean? recompute_unitigs_already
    Boolean? show_multialigns
    Boolean? enable_debugging_option
    Boolean? update_store_computing
    Int? max_coverage
    String? maxlength
    Boolean? in_place
    String? v_p_use
    Boolean? load_all
    String? g
    String version
    String partition
    String? opts
  }
  command <<<
    utgcns \
      ~{version} \
      ~{partition} \
      ~{opts} \
      ~{if defined(test_computation_unitig) then ("-T " +  '"' + test_computation_unitig + '"') else ""} \
      ~{if (recompute_unitigs_already) then "-f" else ""} \
      ~{if (show_multialigns) then "-v" else ""} \
      ~{if (enable_debugging_option) then "-V" else ""} \
      ~{if (update_store_computing) then "-n" else ""} \
      ~{if defined(max_coverage) then ("-maxcoverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(maxlength) then ("-maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if (in_place) then "-inplace" else ""} \
      ~{if defined(v_p_use) then ("-t " +  '"' + v_p_use + '"') else ""} \
      ~{if (load_all) then "-loadall" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    test_computation_unitig: "Test the computation of the unitig layout in 'file'"
    recompute_unitigs_already: "Recompute unitigs that already have a multialignment"
    show_multialigns: "Show multialigns."
    enable_debugging_option: "Enable debugging option 'verbosemultialign'."
    update_store_computing: "Do not update the store after computing consensus."
    max_coverage: "Use non-contained reads and the longest contained reads, up to\\nC coverage, for consensus generation.  The default is 0, and will\\nuse all reads."
    maxlength: "Do not compute consensus for unitigs longer than l bases."
    in_place: "Write the updated unitig to the same version it was read from."
    v_p_use: "V P        If 'partition' is '.', use an unpartitioned tigStore/gkpStore."
    load_all: "Load ALL reads into memory.  Ignores partition if it exists."
    g: ""
    version: ""
    partition: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}