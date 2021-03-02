version 1.0

task Anviscriptgenshortreads {
  input {
    File? output_file_path
    String configuration_ini
    String short_reads_fast_a
  }
  command <<<
    anvi_script_gen_short_reads \
      ~{configuration_ini} \
      ~{short_reads_fast_a} \
      ~{if defined(output_file_path) then ("--output-file-path " +  '"' + output_file_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    output_file_path: "Output FASTA file path (default: None)"
    configuration_ini: "🍕 Can provide: "
    short_reads_fast_a: "🍺 More on `anvi-script-gen-short-reads`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}