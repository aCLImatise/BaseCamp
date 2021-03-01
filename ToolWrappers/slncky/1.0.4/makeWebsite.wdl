version 1.0

task MakeWebsite {
  input {
    File var_file
    String spec_a
    String spec_b
    String mouse_bed
    String human_bed
    String maf_dir
    String prefix
  }
  command <<<
    makeWebsite \
      ~{var_file} \
      ~{spec_a} \
      ~{spec_b} \
      ~{mouse_bed} \
      ~{human_bed} \
      ~{maf_dir} \
      ~{prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
    spec_a: ""
    spec_b: ""
    mouse_bed: ""
    human_bed: ""
    maf_dir: ""
    prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}