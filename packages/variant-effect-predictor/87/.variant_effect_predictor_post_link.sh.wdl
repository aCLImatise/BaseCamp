version 1.0

task Varianteffectpredictorpostlinksh {
  command <<<
    _variant_effect_predictor_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}