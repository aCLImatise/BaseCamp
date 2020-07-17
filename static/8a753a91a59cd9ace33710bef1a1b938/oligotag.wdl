version 1.0

task Oligotag {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    File? oligo_list
    Boolean? _oligosize_size
    Boolean? _familysize_size
    Boolean? _distance_minimal
    Boolean? _gcmax_maximum
    String? accepted
    String? rejected
    Boolean? _homopolymer_reject
    Boolean? _homopolymermin_accept
    String? timeout
  }
  command <<<
    oligotag \
      ~{true="--DEBUG" false="" debug} \
      ~{true="--without-progress-bar" false="" without_progress_bar} \
      ~{if defined(oligo_list) then ("--oligo-list " +  '"' + oligo_list + '"') else ""} \
      ~{true="-s" false="" _oligosize_size} \
      ~{true="-f" false="" _familysize_size} \
      ~{true="-d" false="" _distance_minimal} \
      ~{true="-g" false="" _gcmax_maximum} \
      ~{if defined(accepted) then ("--accepted " +  '"' + accepted + '"') else ""} \
      ~{if defined(rejected) then ("--rejected " +  '"' + rejected + '"') else ""} \
      ~{true="-p" false="" _homopolymer_reject} \
      ~{true="-P" false="" _homopolymermin_accept} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    oligo_list: "filename containing a list of oligonucleotide"
    _oligosize_size: "<###>, --oligo-size=<###> Size of oligonucleotide to generate"
    _familysize_size: "<###>, --family-size=<###> Size of oligonucleotide family to generate"
    _distance_minimal: "<###>, --distance=<###> minimal distance between two oligonucleotides"
    _gcmax_maximum: "<###>, --gc-max=<###> maximum count of G or C nucleotide acceptable in a word"
    accepted: "pattern of accepted oligonucleotide"
    rejected: "pattern of rejected oligonucleotide"
    _homopolymer_reject: "<###>, --homopolymer=<###> reject oligo with homopolymer longer than."
    _homopolymermin_accept: "<###>, --homopolymer-min=<###> accept only oligo with homopolymer longer or equal to."
    timeout: "timeout to identify a clique of good size"
  }
}