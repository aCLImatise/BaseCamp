version 1.0

task Oligotag {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    File? oligo_list
    Boolean? _oligosizesize_oligonucleotide
    Boolean? _familysizesize_oligonucleotide
    Boolean? distanceminimal_distance_two
    Boolean? gcmaxmaximum_count_g
    String? accepted
    String? rejected
    Boolean? _homopolymerreject_oligo
    Boolean? only_oligo_longer
    Int? timeout
  }
  command <<<
    oligotag \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(oligo_list) then ("--oligo-list " +  '"' + oligo_list + '"') else ""} \
      ~{if (_oligosizesize_oligonucleotide) then "-s" else ""} \
      ~{if (_familysizesize_oligonucleotide) then "-f" else ""} \
      ~{if (distanceminimal_distance_two) then "-d" else ""} \
      ~{if (gcmaxmaximum_count_g) then "-g" else ""} \
      ~{if defined(accepted) then ("--accepted " +  '"' + accepted + '"') else ""} \
      ~{if defined(rejected) then ("--rejected " +  '"' + rejected + '"') else ""} \
      ~{if (_homopolymerreject_oligo) then "-p" else ""} \
      ~{if (only_oligo_longer) then "-P" else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    oligo_list: "filename containing a list of oligonucleotide"
    _oligosizesize_oligonucleotide: "<###>, --oligo-size=<###>\\nSize of oligonucleotide to generate"
    _familysizesize_oligonucleotide: "<###>, --family-size=<###>\\nSize of oligonucleotide family to generate"
    distanceminimal_distance_two: "<###>, --distance=<###>\\nminimal distance between two oligonucleotides"
    gcmaxmaximum_count_g: "<###>, --gc-max=<###>\\nmaximum count of G or C nucleotide acceptable in a\\nword"
    accepted: "pattern of accepted oligonucleotide"
    rejected: "pattern of rejected oligonucleotide"
    _homopolymerreject_oligo: "<###>, --homopolymer=<###>\\nreject oligo with homopolymer longer than."
    only_oligo_longer: "<###>, --homopolymer-min=<###>\\naccept only oligo with homopolymer longer or equal to."
    timeout: "timeout to identify a clique of good size\\n"
  }
  output {
    File out_stdout = stdout()
  }
}