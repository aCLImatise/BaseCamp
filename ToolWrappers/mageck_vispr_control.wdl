version 1.0

task MageckvisprControl {
  input {
    String mage_ck_vis_pr
    String is
    String a
    String comprehensive
    String quality
    String control
  }
  command <<<
    mageck_vispr control \
      ~{mage_ck_vis_pr} \
      ~{is} \
      ~{a} \
      ~{comprehensive} \
      ~{quality} \
      ~{control}
  >>>
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