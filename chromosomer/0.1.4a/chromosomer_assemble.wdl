version 1.0

task ChromosomerAssemble {
  input {
    Boolean? save_soft_mask
  }
  command <<<
    chromosomer assemble \
      ~{true="--save_soft_mask" false="" save_soft_mask}
  >>>
  parameter_meta {
    save_soft_mask: "keep soft masking from the original fragment sequences (default: False)"
  }
}