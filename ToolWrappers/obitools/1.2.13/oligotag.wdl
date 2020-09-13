version 1.0

task Oligotag {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    File? oligo_list
    Boolean? _oligosizesize_generate
    Boolean? _familysizesize_generate
    Boolean? _distanceminimal_distance
    Boolean? _gcmaxmaximum_count
    String? accepted
    String? rejected
    Boolean? _homopolymerreject_oligo
    Boolean? _homopolymerminaccept_only
    Int? timeout
  }
  command <<<
    oligotag \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(oligo_list) then ("--oligo-list " +  '"' + oligo_list + '"') else ""} \
      ~{if (_oligosizesize_generate) then "-s" else ""} \
      ~{if (_familysizesize_generate) then "-f" else ""} \
      ~{if (_distanceminimal_distance) then "-d" else ""} \
      ~{if (_gcmaxmaximum_count) then "-g" else ""} \
      ~{if defined(accepted) then ("--accepted " +  '"' + accepted + '"') else ""} \
      ~{if defined(rejected) then ("--rejected " +  '"' + rejected + '"') else ""} \
      ~{if (_homopolymerreject_oligo) then "-p" else ""} \
      ~{if (_homopolymerminaccept_only) then "-P" else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    oligo_list: "filename containing a list of oligonucleotide"
    _oligosizesize_generate: "<###>, --oligo-size=<###>\\nSize of oligonucleotide to generate"
    _familysizesize_generate: "<###>, --family-size=<###>\\nSize of oligonucleotide family to generate"
    _distanceminimal_distance: "<###>, --distance=<###>\\nminimal distance between two oligonucleotides"
    _gcmaxmaximum_count: "<###>, --gc-max=<###>\\nmaximum count of G or C nucleotide acceptable in a\\nword"
    accepted: "pattern of accepted oligonucleotide"
    rejected: "pattern of rejected oligonucleotide"
    _homopolymerreject_oligo: "<###>, --homopolymer=<###>\\nreject oligo with homopolymer longer than."
    _homopolymerminaccept_only: "<###>, --homopolymer-min=<###>\\naccept only oligo with homopolymer longer or equal to."
    timeout: "timeout to identify a clique of good size\\n"
  }
  output {
    File out_stdout = stdout()
  }
}