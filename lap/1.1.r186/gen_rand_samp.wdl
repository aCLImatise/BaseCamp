version 1.0

task GenRandSamp.py {
  input {
    Boolean samplesSamples
    Boolean outputOutputDir
    Boolean debugDebugLevel
  }
  command <<<
    gen_rand_samp.py \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--output_dir" false="" outputOutputDir} \
      ~{true="--debug_level" false="" debugDebugLevel}
  >>>
}