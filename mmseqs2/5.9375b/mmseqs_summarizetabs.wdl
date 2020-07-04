version 1.0

task MmseqsSummarizetabs {
  input {
    Boolean? list_matches_evalue
    Boolean? list_matches_fraction
    Boolean? overlap
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs summarizetabs \
      ~{true="-e" false="" list_matches_evalue} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="--overlap" false="" overlap} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    overlap: "0.000           maximum overlap                                             "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}