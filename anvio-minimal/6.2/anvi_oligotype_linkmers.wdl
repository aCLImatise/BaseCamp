version 1.0

task AnviOligotypeLinkmers {
  input {
    String? input_file
    String? output_dir
  }
  command <<<
    anvi-oligotype-linkmers \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Output file of `anvi-report-linkmers`."
    output_dir: "Directory path for output files"
  }
}