version 1.0

task GmxEnergy {
  input {
    File? config
    File? input_energy_path
    File? output_x_vg_path
  }
  command <<<
    gmx_energy \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_energy_path) then ("--input_energy_path " +  '"' + input_energy_path + '"') else ""} \
      ~{if defined(output_x_vg_path) then ("--output_xvg_path " +  '"' + output_x_vg_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_energy_path: "Path to the input EDR file. Accepted formats: edr."
    output_x_vg_path: "Path to the XVG output file. Accepted formats: xvg.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_x_vg_path = "${in_output_x_vg_path}"
  }
}