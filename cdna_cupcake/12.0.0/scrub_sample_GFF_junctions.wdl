version 1.0

task ScrubSampleGFFJunctions.py {
  input {
    Int minMinSample
    Int minMinTranscript
    String scrubbedScrubbedJunctionFile
  }
  command <<<
    scrub_sample_GFF_junctions.py \
      ~{if defined(minMinSample) then ("--min_sample " +  '"' + minMinSample + '"') else ""} \
      ~{if defined(minMinTranscript) then ("--min_transcript " +  '"' + minMinTranscript + '"') else ""} \
      ~{if defined(scrubbedScrubbedJunctionFile) then ("--scrubbed_junction_file " +  '"' + scrubbedScrubbedJunctionFile + '"') else ""}
  >>>
}