version 1.0

task Mdpocket {
  input {
    File? trajectory_format
    File? f
    File? topology_format
    String? flag_perform_calculations
    String? output_prefix
    Boolean? drug_g_ability_score
  }
  command <<<
    mdpocket \
      ~{if defined(trajectory_format) then ("--trajectory_format " +  '"' + trajectory_format + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(topology_format) then ("--topology_format " +  '"' + topology_format + '"') else ""} \
      ~{if defined(flag_perform_calculations) then ("-x " +  '"' + flag_perform_calculations + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (drug_g_ability_score) then "--druggability_score" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trajectory_format: "PDB file"
    f: "PDB file"
    topology_format: "(currently only prmtop is supported)"
    flag_perform_calculations: "this flag to perform interaction energy grid calculations"
    output_prefix: ": specify the prefix of all output files here"
    drug_g_ability_score: ": put this flag to score pockets by druggability"
  }
  output {
    File out_stdout = stdout()
  }
}