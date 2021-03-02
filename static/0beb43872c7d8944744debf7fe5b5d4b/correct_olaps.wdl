version 1.0

task Correctolaps {
  input {
    File? specifies_binary_file
    Boolean? specify_file_use
    File? specifies_name_file
    String? overlaps_less_areautomatically
    Boolean? specify_binary_store
    Int? specify_level_verbose
    File? specifies_name_where
    File? d
  }
  command <<<
    correct_olaps \
      ~{if defined(specifies_binary_file) then ("-e " +  '"' + specifies_binary_file + '"') else ""} \
      ~{if (specify_file_use) then "-F" else ""} \
      ~{if defined(specifies_name_file) then ("-o " +  '"' + specifies_name_file + '"') else ""} \
      ~{if defined(overlaps_less_areautomatically) then ("-q " +  '"' + overlaps_less_areautomatically + '"') else ""} \
      ~{if (specify_binary_store) then "-S" else ""} \
      ~{if defined(specify_level_verbose) then ("-v " +  '"' + specify_level_verbose + '"') else ""} \
      ~{if defined(specifies_name_where) then ("-X " +  '"' + specifies_name_where + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_binary_file: "specifies binary file to dump corrected erates to\\nfor later updating of olap store by  update-erates"
    specify_file_use: "specify file of sorted overlaps to use (in the format\\nproduced by  get-olaps"
    specifies_name_file: "specifies name of file to which OVL messages go"
    overlaps_less_areautomatically: "overlaps less than this error rate are\\nautomatically output"
    specify_binary_store: "specify the binary overlap store containing overlaps to use"
    specify_level_verbose: "specify level of verbose outputs, higher is more"
    specifies_name_where: "specifies name of file where list of ovl's to delete goes"
    d: ""
  }
  output {
    File out_stdout = stdout()
  }
}