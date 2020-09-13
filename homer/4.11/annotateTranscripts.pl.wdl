version 1.0

task AnnotateTranscriptspl {
  input {
    Boolean? no_repeats
    Boolean? min_overlap
    Boolean? promoter_size
    Boolean? repeat_size
    Directory? asses_rpkm_fragments
    Boolean? min
    Boolean? min_p
    Boolean? strand
    Boolean? merge
    File transcript_peak_file
    String genome
  }
  command <<<
    annotateTranscripts_pl \
      ~{transcript_peak_file} \
      ~{genome} \
      ~{if (no_repeats) then "-noRepeats" else ""} \
      ~{if (min_overlap) then "-minOverlap" else ""} \
      ~{if (promoter_size) then "-promoterSize" else ""} \
      ~{if (repeat_size) then "-repeatSize" else ""} \
      ~{if defined(asses_rpkm_fragments) then ("-d " +  '"' + asses_rpkm_fragments + '"') else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (min_p) then "-minp" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (merge) then "-merge" else ""}
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
  output {
    File out_stdout = stdout()
  }
}