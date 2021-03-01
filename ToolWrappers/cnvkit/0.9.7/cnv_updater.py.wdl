version 1.0

task CnvUpdaterpy {
  input {
    Directory? output_dir
    File? suffix
    String cnn_files
  }
  command <<<
    cnv_updater_py \
      ~{cnn_files} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Directory to write output .cnn files."
    suffix: "Filename suffix to add before the '.cnn' extension in\\noutput files. [Default: .updated]\\n"
    cnn_files: "CNVkit coverage files to update (*.targetcoverage.cnn,\\n*.antitargetcoverage.cnn)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_suffix = "${in_suffix}"
  }
}