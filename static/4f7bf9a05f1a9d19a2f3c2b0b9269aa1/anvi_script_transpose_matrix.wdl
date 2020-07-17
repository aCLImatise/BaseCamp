version 1.0

task AnviScriptTransposeMatrix {
  input {
    String? output_file
    String matrix_file
  }
  command <<<
    anvi-script-transpose-matrix \
      ~{matrix_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "File path to store results."
    matrix_file: "Input matrix."
  }
}