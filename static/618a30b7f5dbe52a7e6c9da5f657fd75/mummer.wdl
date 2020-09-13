version 1.0

task Mummer {
  input {
    Boolean? mum
    Boolean? mum_reference
    Boolean? m_umc_and
    Boolean? max_match
    Boolean? set_minimum_length
    Boolean? compute_forward_reverse
    Boolean? force_output_format
    Boolean? match_only_characters
    Boolean? print_length_query
    Boolean? compute_only_matches
    Boolean? print_first_characters
    Boolean? report_query_position
    Boolean? sampled_suffix_positions
    Boolean? threads
    Boolean? q_threads
    Boolean? suf_link
    Boolean? child
    Boolean? skip
    Boolean? km_er
    Boolean? save
    Boolean? load
    Int query_file_one
    String? query
    Int? file_three_two
  }
  command <<<
    mummer \
      ~{query_file_one} \
      ~{query} \
      ~{file_three_two} \
      ~{if (mum) then "-mum" else ""} \
      ~{if (mum_reference) then "-mumreference" else ""} \
      ~{if (m_umc_and) then "-mumcand" else ""} \
      ~{if (max_match) then "-maxmatch" else ""} \
      ~{if (set_minimum_length) then "-l" else ""} \
      ~{if (compute_forward_reverse) then "-b" else ""} \
      ~{if (force_output_format) then "-F" else ""} \
      ~{if (match_only_characters) then "-n" else ""} \
      ~{if (print_length_query) then "-L" else ""} \
      ~{if (compute_only_matches) then "-r" else ""} \
      ~{if (print_first_characters) then "-s" else ""} \
      ~{if (report_query_position) then "-c" else ""} \
      ~{if (sampled_suffix_positions) then "-k" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (q_threads) then "-qthreads" else ""} \
      ~{if (suf_link) then "-suflink" else ""} \
      ~{if (child) then "-child" else ""} \
      ~{if (skip) then "-skip" else ""} \
      ~{if (km_er) then "-kmer" else ""} \
      ~{if (save) then "-save" else ""} \
      ~{if (load) then "-load" else ""}
  >>>
  parameter_meta {
    mum: "compute maximal matches that are unique in both sequences"
    mum_reference: "compute maximal matches that are unique in the reference-\\nsequence but not necessarily in the query-sequence (default)"
    m_umc_and: "same as -mumreference"
    max_match: "compute all maximal matches regardless of their uniqueness"
    set_minimum_length: "set the minimum length of a match\\nif not set, the default value is 20"
    compute_forward_reverse: "compute forward and reverse complement matches"
    force_output_format: "force 4 column output format regardless of the number of\\nreference sequence inputs"
    match_only_characters: "match only the characters a, c, g, or t"
    print_length_query: "print length of query sequence in header of matches"
    compute_only_matches: "compute only reverse complement matches"
    print_first_characters: "print first 53 characters of the matching substring"
    report_query_position: "Report the query position of a reverse complement match relative to the forward strand of the query sequence"
    sampled_suffix_positions: "sampled suffix positions (one by default)"
    threads: "number of threads to use for -maxmatch, only valid k > 1"
    q_threads: "number of threads to use for queries"
    suf_link: "use suffix links (1=yes or 0=no) in the index and during search [auto]"
    child: "use child table (1=yes or 0=no) in the index and during search [auto]"
    skip: "sparsify the MEM-finding algorithm even more, performing jumps of skip*k [auto (l-10)/k]\\nthis is a performance parameter that trade-offs SA traversal with checking of right-maximal MEMs"
    km_er: "use kmer table containing sa-intervals (speeds up searching first k characters) in the index and during search [int value, auto]"
    save: "(string) save index to file to use again later (string)"
    load: "(string) load index from file"
    query_file_one: ""
    query: ""
    file_three_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}