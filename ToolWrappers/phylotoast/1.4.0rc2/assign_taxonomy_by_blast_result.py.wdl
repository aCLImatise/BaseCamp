version 1.0

task AssignTaxonomyByBlastResultpy {
  input {
    String? rep_set_fp
    File? id_to_taxonomy_fp
    File? assigned_taxonomy_fp
  }
  command <<<
    assign_taxonomy_by_blast_result_py \
      ~{if defined(rep_set_fp) then ("--rep_set_fp " +  '"' + rep_set_fp + '"') else ""} \
      ~{if defined(id_to_taxonomy_fp) then ("--id_to_taxonomy_fp " +  '"' + id_to_taxonomy_fp + '"') else ""} \
      ~{if defined(assigned_taxonomy_fp) then ("--assigned_taxonomy_fp " +  '"' + assigned_taxonomy_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rep_set_fp: "The set of representative sequences."
    id_to_taxonomy_fp: "Path to tab-delimited file mapping sequences to\\nassigned taxonomy."
    assigned_taxonomy_fp: "The path to the result file. By default outputs to\\nassigned_taxonomy.txt"
  }
  output {
    File out_stdout = stdout()
  }
}