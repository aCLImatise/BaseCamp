version 1.0

task RsatMatrixdistrib {
  input {
    Boolean? bg_format_dot_supported
    String matrix_distrib
    String util
    String oligo_analysis_dot
    String details_dot
    String convert_background_model_dot
  }
  command <<<
    rsat matrix_distrib \
      ~{matrix_distrib} \
      ~{util} \
      ~{oligo_analysis_dot} \
      ~{details_dot} \
      ~{convert_background_model_dot} \
      ~{if (bg_format_dot_supported) then "-bg_format.Supported" else ""}
  >>>
  parameter_meta {
    bg_format_dot_supported: ": oligo-analysis, MotifSampler, meme. Default is:"
    matrix_distrib: "[1mDESCRIPTION[0m"
    util: "PSSM"
    oligo_analysis_dot: "For a description of available format, see [33mconvert-backgound-model"
    details_dot: "[1m-bgfile background_file[0m\\nBackground model file."
    convert_background_model_dot: "[1m-bg_pseudo #[0m"
  }
  output {
    File out_stdout = stdout()
  }
}