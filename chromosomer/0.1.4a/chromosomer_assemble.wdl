version 1.0

task ChromosomerAssemble {
  input {
    Boolean? save_soft_mask
  }
  command <<<
    chromosomer assemble \
      ~{if (save_soft_mask) then "--save_soft_mask" else ""}
  >>>
  parameter_meta {
    save_soft_mask: "keep soft masking from the original fragment sequences\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}