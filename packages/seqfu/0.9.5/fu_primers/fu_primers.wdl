version 1.0

task Fuprimers {
  input {
    String? first_pair
    String? second_pair
    String? primer_for
    String? primer_rev
    Int? min_len
    Float? primer_t_hrs
    Int? primer_mismatches
    Int? primer_min_matches
    Int? primer_pos_margin
    Int? pattern_r_one
    Int? pattern_r_two
    Boolean? verbose
  }
  command <<<
    fu_primers \
      ~{if defined(first_pair) then ("--first-pair " +  '"' + first_pair + '"') else ""} \
      ~{if defined(second_pair) then ("--second-pair " +  '"' + second_pair + '"') else ""} \
      ~{if defined(primer_for) then ("--primer-for " +  '"' + primer_for + '"') else ""} \
      ~{if defined(primer_rev) then ("--primer-rev " +  '"' + primer_rev + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(primer_t_hrs) then ("--primer-thrs " +  '"' + primer_t_hrs + '"') else ""} \
      ~{if defined(primer_mismatches) then ("--primer-mismatches " +  '"' + primer_mismatches + '"') else ""} \
      ~{if defined(primer_min_matches) then ("--primer-min-matches " +  '"' + primer_min_matches + '"') else ""} \
      ~{if defined(primer_pos_margin) then ("--primer-pos-margin " +  '"' + primer_pos_margin + '"') else ""} \
      ~{if defined(pattern_r_one) then ("--pattern-R1 " +  '"' + pattern_r_one + '"') else ""} \
      ~{if defined(pattern_r_two) then ("--pattern-R2 " +  '"' + pattern_r_two + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.5--h38613fd_0"
  }
  parameter_meta {
    first_pair: "First sequence in pair"
    second_pair: "Second sequence in pair (can be guessed)"
    primer_for: "Sequence of the forward primer [default: CCTACGGGNGGCWGCAG]"
    primer_rev: "Sequence of the reverse primer [default: GGACTACHVGGGTATCTAATCC]"
    min_len: "Minimum sequence length after trimming [default: 50]"
    primer_t_hrs: "Minimum amount of matches over total length [default: 0.8]"
    primer_mismatches: "Maximum number of missmatches allowed [default: 2]"
    primer_min_matches: "Minimum numer of matches required [default: 8]"
    primer_pos_margin: "Number of bases from the extremity of the sequence allowed [default: 2]"
    pattern_r_one: "Tag in first pairs filenames [default: auto]"
    pattern_r_two: "Tag in second pairs filenames [default: auto]"
    verbose: "Verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}