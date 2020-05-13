version 1.0

task PyprophetSubsample {
  input {
    File inIn
    File outOut
    Float subsampleSubsampleRatio
    Boolean testTest
  }
  command <<<
    pyprophet subsample \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(subsampleSubsampleRatio) then ("--subsample_ratio " +  '"' + subsampleSubsampleRatio + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}