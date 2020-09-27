version 1.0

task Utgcnsfix {
  input {
    Boolean? show_multialigns
    Boolean? enable_debugging_option
    String? only_fix_unitig
    Boolean? update_tigstore_fixes
    Boolean? anything_just_report
    Boolean? load_entire_gkpstore
    File? partitioned_output_file
    String? t
    String? g
    String version
    String partition
    String? opts
  }
  command <<<
    utgcnsfix \
      ~{version} \
      ~{partition} \
      ~{opts} \
      ~{if (show_multialigns) then "-v" else ""} \
      ~{if (enable_debugging_option) then "-V" else ""} \
      ~{if defined(only_fix_unitig) then ("-u " +  '"' + only_fix_unitig + '"') else ""} \
      ~{if (update_tigstore_fixes) then "-n" else ""} \
      ~{if (anything_just_report) then "-N" else ""} \
      ~{if (load_entire_gkpstore) then "-l" else ""} \
      ~{if (partitioned_output_file) then "-o" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    show_multialigns: "Show multialigns."
    enable_debugging_option: "Enable debugging option 'verbosemultialign'."
    only_fix_unitig: "Only fix unitig 'iid'."
    update_tigstore_fixes: "Don't update tigStore with any fixes."
    anything_just_report: "Don't do anything, just report which unitigs are broken."
    load_entire_gkpstore: "Load the entire gkpStore into memory (faster, but more memory)"
    partitioned_output_file: "Partitioned output file.  If 'partition' is not '.' or '0' this must\\nbe supplied.\\n"
    t: ""
    g: ""
    version: ""
    partition: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
    File out_partitioned_output_file = "${in_partitioned_output_file}"
  }
}