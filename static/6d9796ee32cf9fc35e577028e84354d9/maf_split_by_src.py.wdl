version 1.0

task MafSplitBySrcpy {
  input {
    String? out_prefix
    String? component
  }
  command <<<
    maf_split_by_src_py \
      ~{if defined(out_prefix) then ("--outprefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(component) then ("--component " +  '"' + component + '"') else ""}
  >>>
  parameter_meta {
    out_prefix: ""
    component: ""
  }
  output {
    File out_stdout = stdout()
  }
}