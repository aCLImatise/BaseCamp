version 1.0

task MageckvisprQuality {
  input {
    String mage_ck_vis_pr
    String is
    String a
    String comprehensive
    String quality
    String control
  }
  command <<<
    mageck_vispr quality \
      ~{mage_ck_vis_pr} \
      ~{is} \
      ~{a} \
      ~{comprehensive} \
      ~{quality} \
      ~{control}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mageck-vispr:0.5.6--py_0"
  }
  parameter_meta {
    mage_ck_vis_pr: ""
    is: ""
    a: ""
    comprehensive: ""
    quality: ""
    control: ""
  }
  output {
    File out_stdout = stdout()
  }
}