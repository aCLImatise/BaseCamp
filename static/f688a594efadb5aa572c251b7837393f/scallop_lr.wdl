version 1.0

task Scalloplr {
  input {
    Boolean? verbose
    Boolean? library_type
    Float? min_transcript_coverage
    Float? min_single_exon_coverage
    Int? min_transcript_length_increase
    Int? min_mapping_quality
    Int? min_bundle_gap
    Int? min_num_hits_in_bundle
    Int? min_splice_hits
    Int? min_boundary_hits
    File? c
    File? o
    File? i
  }
  command <<<
    scallop_lr \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (library_type) then "--library_type" else ""} \
      ~{if defined(min_transcript_coverage) then ("--min_transcript_coverage " +  '"' + min_transcript_coverage + '"') else ""} \
      ~{if defined(min_single_exon_coverage) then ("--min_single_exon_coverage " +  '"' + min_single_exon_coverage + '"') else ""} \
      ~{if defined(min_transcript_length_increase) then ("--min_transcript_length_increase " +  '"' + min_transcript_length_increase + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_bundle_gap) then ("--min_bundle_gap " +  '"' + min_bundle_gap + '"') else ""} \
      ~{if defined(min_num_hits_in_bundle) then ("--min_num_hits_in_bundle " +  '"' + min_num_hits_in_bundle + '"') else ""} \
      ~{if defined(min_splice_hits) then ("--min_splice_hits " +  '"' + min_splice_hits + '"') else ""} \
      ~{if defined(min_boundary_hits) then ("--min_boundary_hits " +  '"' + min_boundary_hits + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "<0, 1, 2>                         0: quiet; 1: one line for each graph; 2: with details, default: 1"
    library_type: "<first, second, unstranded>  library type of the sample, default: unstranded"
    min_transcript_coverage: "minimum coverage required for a multi-exon transcript, default: 1.01"
    min_single_exon_coverage: "minimum coverage required for a single-exon transcript, default: 10"
    min_transcript_length_increase: "default: 50"
    min_mapping_quality: "ignore reads with mapping quality less than this value, default: 1"
    min_bundle_gap: "minimum distances required to start a new bundle, default: 50"
    min_num_hits_in_bundle: "minimum number of reads required in a bundle, default: 1"
    min_splice_hits: "minimum number of spliced reads required for a junction, default: 1"
    min_boundary_hits: "minimum number of reads with 5'/3' primes required for a boundary, default: 3\\n___           ___           ___                                       ___           ___\\n/  /\\         /  /\\         /  /\\                                     /  /\\         /  /\\\\n/  /:/_       /  /:/        /  /::\\                                   /  /::\\       /  /::\\\\n/  /:/ /\\     /  /:/        /  /:/\\:\\    ___     ___   ___     ___    /  /:/\\:\\     /  /:/\\:\\\\n/  /:/ /::\\   /  /:/  ___   /  /:/~/::\\  /__/\\   /  /\\ /__/\\   /  /\\  /  /:/  \\:\\   /  /:/~/:/"
    c: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}