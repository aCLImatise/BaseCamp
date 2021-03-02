version 1.0

task Selectreads {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    File? specify_file_containing_list_iids_print
    File? specify_file_containing_list_eids_print
    Boolean? just_output_eid
    Boolean? just_output_iid
    Boolean? automatically_consider_mates
    Boolean? nullify_mates_printing
    File? file_list_reads_iids
    File? file_list_reads_eids
    File bank_path
  }
  command <<<
    select_reads \
      ~{bank_path} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if defined(specify_file_containing_list_iids_print) then ("-i " +  '"' + specify_file_containing_list_iids_print + '"') else ""} \
      ~{if defined(specify_file_containing_list_eids_print) then ("-I " +  '"' + specify_file_containing_list_eids_print + '"') else ""} \
      ~{if (just_output_eid) then "-L" else ""} \
      ~{if (just_output_iid) then "-l" else ""} \
      ~{if (automatically_consider_mates) then "-M" else ""} \
      ~{if (nullify_mates_printing) then "-N" else ""} \
      ~{if defined(file_list_reads_iids) then ("-x " +  '"' + file_list_reads_iids + '"') else ""} \
      ~{if defined(file_list_reads_eids) then ("-X " +  '"' + file_list_reads_eids + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    specify_file_containing_list_iids_print: "Specify file containing list of iid's to print"
    specify_file_containing_list_eids_print: "Specify file containing list of eid's to print"
    just_output_eid: "Just output read names that would be printed by eid"
    just_output_iid: "Just output read names that would be printed by iid"
    automatically_consider_mates: "Automatically consider mates"
    nullify_mates_printing: "Nullify mates in FRG if not printing both mate-pairs"
    file_list_reads_iids: "File of list reads iids to exclude"
    file_list_reads_eids: "File of list reads eids to exclude"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}