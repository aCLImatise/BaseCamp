version 1.0

task DeblurBuilddbindexCritical {
  input {
    String de_blur
    String build_db_index
    String ref_fp
    String output_dir
  }
  command <<<
    deblur build_db_index __critical \
      ~{de_blur} \
      ~{build_db_index} \
      ~{ref_fp} \
      ~{output_dir}
  >>>
  parameter_meta {
    de_blur: ""
    build_db_index: ""
    ref_fp: ""
    output_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}