version 1.0

task Mmcif {
  input {
    File? config
    File? output_mmcif_path
  }
  command <<<
    mmcif \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_mmcif_path) then ("--output_mmcif_path " +  '"' + output_mmcif_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_mmcif_path: "Path to the output MMCIF file. Accepted formats: cif, mmcif.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_mmcif_path = "${in_output_mmcif_path}"
  }
}