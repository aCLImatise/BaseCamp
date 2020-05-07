version 1.0

task UpdateConfig.py {
  input {
    Boolean writeWriteChanges
  }
  command <<<
    update-config.py \
      ~{true="--write-changes" false="" writeWriteChanges}
  >>>
}