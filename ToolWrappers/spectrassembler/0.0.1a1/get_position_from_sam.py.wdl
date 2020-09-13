version 1.0

task GetPositionFromSampy {
  input {
    File? root
  }
  command <<<
    get_position_from_sam_py \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  parameter_meta {
    root: "directory where to store position file."
  }
  output {
    File out_stdout = stdout()
  }
}