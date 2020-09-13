version 1.0

task AssignTaxonomyByBlastResultpy {
  input {
    String? rep_set_fp
    File? path_file_mapping
    File? assigned_taxonomy_fp
    Boolean? verbose
    String var_4
  }
  command <<<
    assign_taxonomy_by_blast_result_py \
      ~{var_4} \
      ~{if defined(rep_set_fp) then ("--rep_set_fp " +  '"' + rep_set_fp + '"') else ""} \
      ~{if defined(path_file_mapping) then ("--id_to_taxonomy_fp " +  '"' + path_file_mapping + '"') else ""} \
      ~{if defined(assigned_taxonomy_fp) then ("--assigned_taxonomy_fp " +  '"' + assigned_taxonomy_fp + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    rep_set_fp: "The set of representative sequences."
    path_file_mapping: "Path to tab-delimited file mapping sequences to\\nassigned taxonomy."
    assigned_taxonomy_fp: "The path to the result file. By default outputs to\\nassigned_taxonomy.txt"
    verbose: ""
    var_4: "[-o ASSIGNED_TAXONOMY_FP] [-v]"
  }
  output {
    File out_stdout = stdout()
  }
}