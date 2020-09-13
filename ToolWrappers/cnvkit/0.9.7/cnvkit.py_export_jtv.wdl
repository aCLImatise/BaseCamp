version 1.0

task CnvkitpyExportJtv {
  input {
    File? output_file_name
    String filenames
  }
  command <<<
    cnvkit_py export jtv \
      ~{filenames} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "Output file name.\\n"
    filenames: "Log2 copy ratio data file(s) (*.cnr), the output of\\nthe 'fix' sub-command."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}