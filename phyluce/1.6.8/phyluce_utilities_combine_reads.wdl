version 1.0

task PhyluceUtilitiesCombineReads {
  input {
    File? config
    File? var_output
    String? subfolder
  }
  command <<<
    phyluce_utilities_combine_reads \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(subfolder) then ("--subfolder " +  '"' + subfolder + '"') else ""}
  >>>
  parameter_meta {
    config: "The configuration file for reads we are combining"
    var_output: "The configuration file for reads we are combining"
    subfolder: "A subdirectory, below the level of the group,\\ncontaining the reads\\n"
  }
  output {
    File out_stdout = stdout()
  }
}