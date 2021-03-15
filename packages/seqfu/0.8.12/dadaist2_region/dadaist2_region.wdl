version 1.0

task Dadaist2region {
  input {
    String? first_pair
    String? second_pair
    String? primer_for
    String? primer_rev
    Int? pattern_r_one
    Int? pattern_r_two
    Float? primer_t_hrs
    Int? primer_mismatches
    Int? primer_min_matches
    Int? pool_size
    Int? min_score
    Int? max_reads
    Boolean? verbose
    String ampli_check
  }
  command <<<
    dadaist2_region \
      ~{ampli_check} \
      ~{if defined(first_pair) then ("--first-pair " +  '"' + first_pair + '"') else ""} \
      ~{if defined(second_pair) then ("--second-pair " +  '"' + second_pair + '"') else ""} \
      ~{if defined(primer_for) then ("--primer-for " +  '"' + primer_for + '"') else ""} \
      ~{if defined(primer_rev) then ("--primer-rev " +  '"' + primer_rev + '"') else ""} \
      ~{if defined(pattern_r_one) then ("--pattern-R1 " +  '"' + pattern_r_one + '"') else ""} \
      ~{if defined(pattern_r_two) then ("--pattern-R2 " +  '"' + pattern_r_two + '"') else ""} \
      ~{if defined(primer_t_hrs) then ("--primer-thrs " +  '"' + primer_t_hrs + '"') else ""} \
      ~{if defined(primer_mismatches) then ("--primer-mismatches " +  '"' + primer_mismatches + '"') else ""} \
      ~{if defined(primer_min_matches) then ("--primer-min-matches " +  '"' + primer_min_matches + '"') else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.8.12--hed695b0_0"
  }
  parameter_meta {
    first_pair: "First sequence in pair"
    second_pair: "Second sequence in pair (can be inferred)"
    primer_for: "Sequence of the forward primer [default: CCTACGGGNGGCWGCAG]"
    primer_rev: "Sequence of the reverse primer [default: GGACTACHVGGGTATCTAATCC]"
    pattern_r_one: "Tag in first pairs filenames [default: auto]"
    pattern_r_two: "Tag in second pairs filenames [default: auto]"
    primer_t_hrs: "Minimum amount of matches over total length [default: 1.0]"
    primer_mismatches: "Maximum number of missmatches allowed [default: 0]"
    primer_min_matches: "Minimum numer of matches required [default: 8]"
    pool_size: "Number of sequences/pairs to process per thread [default: 20]"
    min_score: "Minimum alignment score [default: 80]"
    max_reads: "Parse up to INT reads then quit [default: 1000]"
    verbose: "Verbose output"
    ampli_check: ""
  }
  output {
    File out_stdout = stdout()
  }
}