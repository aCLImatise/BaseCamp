version 1.0

task Anvioligotypelinkmers {
  input {
    File? input_file
    File? output_dir
    String link_mers_txt
    String oligo_types
  }
  command <<<
    anvi_oligotype_linkmers \
      ~{link_mers_txt} \
      ~{oligo_types} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    input_file: "Output file of `anvi-report-linkmers`. (default: None)"
    output_dir: "Directory path for output files (default: None)"
    link_mers_txt: "🍕 Can provide: "
    oligo_types: "🍺 More on `anvi-oligotype-linkmers`:"
  }
  output {
    File out_stdout = stdout()
    File out_input_file = "${in_input_file}"
    File out_output_dir = "${in_output_dir}"
  }
}