version 1.0

task ScrubSampleGFFJunctionspy {
  input {
    Int? min_sample
    Int? min_transcript
    File? scrubbed_junction_file
  }
  command <<<
    scrub_sample_GFF_junctions_py \
      ~{if defined(min_sample) then ("--min_sample " +  '"' + min_sample + '"') else ""} \
      ~{if defined(min_transcript) then ("--min_transcript " +  '"' + min_transcript + '"') else ""} \
      ~{if defined(scrubbed_junction_file) then ("--scrubbed_junction_file " +  '"' + scrubbed_junction_file + '"') else ""}
  >>>
  parameter_meta {
    min_sample: "Minimum number of samples as evidence (default: 1)"
    min_transcript: "Minimum number of transcripts as evidence (default: 2)"
    scrubbed_junction_file: "Scrubbed junction bed --- if given, directly use it to\\nscrub GFFs.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}