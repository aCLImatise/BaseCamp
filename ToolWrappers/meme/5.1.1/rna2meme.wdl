version 1.0

task Rna2meme {
  input {
    Boolean? output_rna_motifs
    Boolean? output_dna_motifs
    Int? seed_start
    Int? seed_end
    Int? start
    Int? ending_offset_rna
    Int? count_assign_match
    Float? wobble
    Float? miss
    Float? other_count
    File? bg
    Int? pseudo
    Boolean? output_logodds_pssm
    String? url
    String var_14
    String add
    String and
    String default
    String ending
    String extra
    File var_file
    String var_21
    String set
    String starting
    String their
    String use
    String var_26
    String var_27
    String contribution
    String misses
    String negative
    String offset
    String the
    String to
    String total_pseudo_counts
    String with
    Int zero
    String added
    String assign
    String background
    String var_40
    String motifs
    String numbers
    String times
    String frequencies
    String instead
    String letter
    String non_seed
    String seed
    String a
    String count
    String in
    String of
    String positions
    String score
    String treat
    String u
    String entire
    String from
    String letters
    String var_60
    String non_match
    String var_62
    String for
    String non_wobble
    String sequence
    String var_as
    String g
  }
  command <<<
    rna2meme \
      ~{var_14} \
      ~{add} \
      ~{and} \
      ~{default} \
      ~{ending} \
      ~{extra} \
      ~{var_file} \
      ~{var_21} \
      ~{set} \
      ~{starting} \
      ~{their} \
      ~{use} \
      ~{var_26} \
      ~{var_27} \
      ~{contribution} \
      ~{misses} \
      ~{negative} \
      ~{offset} \
      ~{the} \
      ~{to} \
      ~{total_pseudo_counts} \
      ~{with} \
      ~{zero} \
      ~{added} \
      ~{assign} \
      ~{background} \
      ~{var_40} \
      ~{motifs} \
      ~{numbers} \
      ~{times} \
      ~{frequencies} \
      ~{instead} \
      ~{letter} \
      ~{non_seed} \
      ~{seed} \
      ~{a} \
      ~{count} \
      ~{in} \
      ~{of} \
      ~{positions} \
      ~{score} \
      ~{treat} \
      ~{u} \
      ~{entire} \
      ~{from} \
      ~{letters} \
      ~{var_60} \
      ~{non_match} \
      ~{var_62} \
      ~{for} \
      ~{non_wobble} \
      ~{sequence} \
      ~{var_as} \
      ~{g} \
      ~{if (output_rna_motifs) then "-rna" else ""} \
      ~{if (output_dna_motifs) then "-dna" else ""} \
      ~{if defined(seed_start) then ("-seed_start " +  '"' + seed_start + '"') else ""} \
      ~{if defined(seed_end) then ("-seed_end " +  '"' + seed_end + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(ending_offset_rna) then ("-end " +  '"' + ending_offset_rna + '"') else ""} \
      ~{if defined(count_assign_match) then ("-match " +  '"' + count_assign_match + '"') else ""} \
      ~{if defined(wobble) then ("-wobble " +  '"' + wobble + '"') else ""} \
      ~{if defined(miss) then ("-miss " +  '"' + miss + '"') else ""} \
      ~{if defined(other_count) then ("-other_count " +  '"' + other_count + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (output_logodds_pssm) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_rna_motifs: "Output RNA motifs (default)."
    output_dna_motifs: "Output DNA motifs instead of RNA motifs."
    seed_start: "starting offset of seed in RNA sequence,\\nset to 0 to treat entire sequence as seed;\\ndefault: 0"
    seed_end: "ending offset of seed in RNA sequence;\\ndefault: 0"
    start: "starting offset in RNA sequence (inclusive);\\nuse negative numbers to count from end;\\ndefault: 1"
    ending_offset_rna: "ending offset in RNA sequence (inclusive);\\nuse negative numbers to count from end;\\ndefault: -1"
    count_assign_match: "count to assign to a match (complement)\\nin the seed region\\ndefault: 1"
    wobble: "count to assign to a U for a G, or a G for a U\\nin the seed region\\ndefault: 0.1"
    miss: "count to assign to a non-match non-wobble\\nin the seed region\\ndefault: 0.01"
    other_count: "extra count added to match, wobble\\nand misses in non-seed positions to reduce\\ntheir contribution to the score;\\ndefault: 0.5"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    output_logodds_pssm: "output the log-odds (PSSM) and frequency\\n(PSPM) motifs; default: PSPM motif only"
    url: "website for the motif; The FASTA ID is\\nsubstituted for MOTIF_NAME; The first word\\nafter the FASTA ID is substituted for\\nMOTIF_AC; default: no url"
    var_14: ""
    add: ""
    and: ""
    default: ""
    ending: ""
    extra: ""
    var_file: ""
    var_21: ""
    set: ""
    starting: ""
    their: ""
    use: ""
    var_26: ""
    var_27: ""
    contribution: ""
    misses: ""
    negative: ""
    offset: ""
    the: ""
    to: ""
    total_pseudo_counts: ""
    with: ""
    zero: ""
    added: ""
    assign: ""
    background: ""
    var_40: ""
    motifs: ""
    numbers: ""
    times: ""
    frequencies: ""
    instead: ""
    letter: ""
    non_seed: ""
    seed: ""
    a: ""
    count: ""
    in: ""
    of: ""
    positions: ""
    score: ""
    treat: ""
    u: ""
    entire: ""
    from: ""
    letters: ""
    var_60: ""
    non_match: ""
    var_62: ""
    for: ""
    non_wobble: ""
    sequence: ""
    var_as: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}