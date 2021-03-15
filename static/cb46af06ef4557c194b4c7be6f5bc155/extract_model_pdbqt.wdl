version 1.0

task ExtractModelPdbqt {
  input {
    File? config
    File? input_pdb_qt_path
    File? output_pdb_qt_path
  }
  command <<<
    extract_model_pdbqt \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_qt_path) then ("--input_pdbqt_path " +  '"' + input_pdb_qt_path + '"') else ""} \
      ~{if defined(output_pdb_qt_path) then ("--output_pdbqt_path " +  '"' + output_pdb_qt_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pdb_qt_path: "Input PDBQT file. Accepted formats: pdbqt."
    output_pdb_qt_path: "Output PDBQT file. Accepted formats: pdbqt.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_qt_path = "${in_output_pdb_qt_path}"
  }
}