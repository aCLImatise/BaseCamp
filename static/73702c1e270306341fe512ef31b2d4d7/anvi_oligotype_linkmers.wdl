version 1.0

task Anvioligotypelinkmers {
  input {
    File? input_file
    File? output_dir
  }
  command <<<
    anvi_oligotype_linkmers \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Output file of `anvi-report-linkmers`."
    output_dir: "Directory path for output files\\n"
  }
  output {
    File out_stdout = stdout()
    File out_input_file = "${in_input_file}"
    File out_output_dir = "${in_output_dir}"
  }
}