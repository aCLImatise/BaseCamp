version 1.0

task MetagenomePipeline.py {
  input {
    File inputInput
    File functionFunction
    File markerMarker
    Float maxMaxNsti
    Int minMinReads
    Int minMinSamples
    Boolean stratStratOut
    Boolean wideWideTable
    Boolean skipSkipNorm
    File outOutDir
  }
  command <<<
    metagenome_pipeline.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(markerMarker) then ("--marker " +  '"' + markerMarker + '"') else ""} \
      ~{if defined(maxMaxNsti) then ("--max_nsti " +  '"' + maxMaxNsti + '"') else ""} \
      ~{if defined(minMinReads) then ("--min_reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(minMinSamples) then ("--min_samples " +  '"' + minMinSamples + '"') else ""} \
      ~{true="--strat_out" false="" stratStratOut} \
      ~{true="--wide_table" false="" wideWideTable} \
      ~{true="--skip_norm" false="" skipSkipNorm} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""}
  >>>
}