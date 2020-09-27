version 1.0

task TomboBuildModelEstimateScale {
  input {
    Boolean? quiet
    Int fast_fives_basedir
  }
  command <<<
    tombo build_model estimate_scale \
      ~{fast_fives_basedir} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    quiet: "Don't print status information."
    fast_fives_basedir: "Directory containing fast5 files. All files ending in\\n\\\"fast5\\\" found recursively within this base directory will be\\nprocessed."
  }
  output {
    File out_stdout = stdout()
  }
}