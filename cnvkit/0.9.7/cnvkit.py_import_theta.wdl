version 1.0

task CnvkitpyImporttheta {
  input {
    Int? ploidy
    Directory? output_dir
  }
  command <<<
    cnvkit_py import_theta \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    ploidy: "Ploidy of normal cells. [Default: 2]"
    output_dir: "Output directory name.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}