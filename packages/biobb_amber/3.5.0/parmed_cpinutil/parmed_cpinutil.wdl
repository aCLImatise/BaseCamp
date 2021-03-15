version 1.0

task ParmedCpinutil {
  input {
    File? config
    File? input_top_path
    File? output_cp_in_path
    File? output_top_path
  }
  command <<<
    parmed_cpinutil \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_top_path) then ("--input_top_path " +  '"' + input_top_path + '"') else ""} \
      ~{if defined(output_cp_in_path) then ("--output_cpin_path " +  '"' + output_cp_in_path + '"') else ""} \
      ~{if defined(output_top_path) then ("--output_top_path " +  '"' + output_top_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_amber:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_top_path: "Input AMBER topology file. Accepted formats: top, parmtop, prmtop."
    output_cp_in_path: "Output AMBER constant pH input (CPin) file. Accepted formats: cpin."
    output_top_path: "Output topology file (AMBER ParmTop). Accepted formats: top, parmtop, prmtop.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_cp_in_path = "${in_output_cp_in_path}"
    File out_output_top_path = "${in_output_top_path}"
  }
}