version 1.0

task SortGroResidues {
  input {
    File? config
    File? input_gro_path
    File? output_gro_path
  }
  command <<<
    sort_gro_residues \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_gro_path: "Input GRO file name"
    output_gro_path: "Output sorted GRO file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_gro_path = "${in_output_gro_path}"
  }
}