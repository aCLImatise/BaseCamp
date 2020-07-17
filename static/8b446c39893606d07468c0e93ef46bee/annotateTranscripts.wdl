version 1.0

task AnnotateTranscripts.pl {
  input {
    Boolean? no_repeats
    Boolean? min_overlap
    Boolean? promoter_size
    Boolean? repeat_size
    String? asses_rpkm_fragments
    Boolean? min
    Boolean? min_p
    Boolean? strand
    Boolean? merge
    String transcript_peak_file
    String genome
  }
  command <<<
    annotateTranscripts.pl \
      ~{transcript_peak_file} \
      ~{genome} \
      ~{true="-noRepeats" false="" no_repeats} \
      ~{true="-minOverlap" false="" min_overlap} \
      ~{true="-promoterSize" false="" promoter_size} \
      ~{true="-repeatSize" false="" repeat_size} \
      ~{if defined(asses_rpkm_fragments) then ("-d " +  '"' + asses_rpkm_fragments + '"') else ""} \
      ~{true="-min" false="" min} \
      ~{true="-minp" false="" min_p} \
      ~{true="-strand" false="" strand} \
      ~{true="-merge" false="" merge}
  >>>
  parameter_meta {
    no_repeats: "(skip repeat annotation)"
    min_overlap: "<#> (Min fraction of overlap to assign transcript as genic, 0.1)"
    promoter_size: "<#> (to identify TSS antisense transcripts vs. enhancers, default: 500)"
    repeat_size: "<#> (size from beginning of transcript to use for repeat ann, default: 500)"
    asses_rpkm_fragments: "(to asses rpkm, merge fragments of same gene)"
    min: "<#> (minimum rpkm, default: 0.01)"
    min_p: "<#> (minimum number of unique reads, default: 10)"
    strand: "<+|-|both> (strand to search for reads, default: +)"
    merge: "<#> (maximum fold difference for adjacent transcripts to be merged, e.g. 2)"
    transcript_peak_file: ""
    genome: ""
  }
}