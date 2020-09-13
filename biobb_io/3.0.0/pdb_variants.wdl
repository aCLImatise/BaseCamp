version 1.0

task PdbVariants {
  input {
    File? config
    File? output_mutations_list_txt
  }
  command <<<
    pdb_variants \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_mutations_list_txt) then ("--output_mutations_list_txt " +  '"' + output_mutations_list_txt + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_mutations_list_txt: "Output variants list text file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_mutations_list_txt = "${in_output_mutations_list_txt}"
  }
}