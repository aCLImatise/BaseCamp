version 1.0

task CnvkitpyImportpicard {
  input {
    Directory? output_dir
    String targets
  }
  command <<<
    cnvkit_py import_picard \
      ~{targets} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    output_dir: "Output directory name.\\n"
    targets: "Sample coverage .csv files (target and antitarget)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}