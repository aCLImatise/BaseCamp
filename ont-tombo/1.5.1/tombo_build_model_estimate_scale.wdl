version 1.0

task TomboBuildModelEstimateScale {
  input {
    Boolean? quiet
    String fast_fives_basedir
  }
  command <<<
    tombo build_model estimate_scale \
      ~{fast_fives_basedir} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Don't print status information."
    fast_fives_basedir: "Directory containing fast5 files. All files ending in \"fast5\" found recursively within this base directory will be processed."
  }
}