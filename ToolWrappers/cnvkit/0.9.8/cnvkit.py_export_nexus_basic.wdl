version 1.0

task CnvkitpyExportNexusbasic {
  input {
    File? output_file_name
    File filename
  }
  command <<<
    cnvkit_py export nexus_basic \
      ~{filename} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    output_file_name: "Output file name.\\n"
    filename: "Log2 copy ratio data file (*.cnr), the output of the\\n'fix' sub-command."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}