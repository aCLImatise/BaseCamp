version 1.0

task FioLoad {
  input {
    String? format
    String? src_crs
    String? dst_crs
    String? layer
    String var_output
    String features_dot_dot_dot
  }
  command <<<
    fio load \
      ~{var_output} \
      ~{features_dot_dot_dot} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(src_crs) then ("--src-crs " +  '"' + src_crs + '"') else ""} \
      ~{if defined(dst_crs) then ("--dst-crs " +  '"' + dst_crs + '"') else ""} \
      ~{if defined(layer) then ("--layer " +  '"' + layer + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    format: "Output format driver name.  [required]"
    src_crs: "Source CRS."
    dst_crs: "Destination CRS.  Defaults to --src-crs when\\nnot given."
    layer: "|NAME           Load features into specified layer.  Layers use\\nzero-based numbering when accessed by index."
    var_output: ""
    features_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}