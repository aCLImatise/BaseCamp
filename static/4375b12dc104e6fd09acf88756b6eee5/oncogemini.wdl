version 1.0

task Oncogemini {
  input {
    String? annotation_dir
    Boolean? v
  }
  command <<<
    oncogemini \
      ~{if defined(annotation_dir) then ("--annotation-dir " +  '"' + annotation_dir + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    annotation_dir: "Path to the annotation database. This argument is optional and if given will take precedence over the default location stored in the oncogemini config file. (default: None)"
    v: ""
  }
}