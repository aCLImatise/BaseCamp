version 1.0

task ExonerateServer {
  input {
    Boolean? soft_mask_query
    Boolean? soft_mask_target
  }
  command <<<
    exonerate-server \
      ~{true="--softmaskquery" false="" soft_mask_query} \
      ~{true="--softmasktarget" false="" soft_mask_target}
  >>>
  parameter_meta {
    soft_mask_query: "[FALSE] "
    soft_mask_target: "[FALSE] "
  }
}