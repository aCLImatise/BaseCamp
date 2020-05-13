version 1.0

task Timescorealn {
  input {
    Boolean scratchScratch
    Boolean scratchScratch
    Boolean scratchScratch
  }
  command <<<
    timescorealn \
      ~{true="--scratch" false="" scratchScratch} \
      ~{true="--scratch" false="" scratchScratch} \
      ~{true="--scratch" false="" scratchScratch}
  >>>
}