version 1.0

task Oncogemini {
  input {
    File? annotation_dir
    Boolean? v
  }
  command <<<
    oncogemini \
      ~{if defined(annotation_dir) then ("--annotation-dir " +  '"' + annotation_dir + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    annotation_dir: "Path to the annotation database. This argument is\\noptional and if given will take precedence over the\\ndefault location stored in the oncogemini config file.\\n(default: None)"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}