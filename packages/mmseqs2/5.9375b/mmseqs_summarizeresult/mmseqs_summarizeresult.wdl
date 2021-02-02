version 1.0

task MmseqsSummarizeresult {
  input {
    Boolean? false_add_convert
    Boolean? list_matches_evalue
    Boolean? list_matches_fraction
    Boolean? overlap
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs summarizeresult \
      ~{if (false_add_convert) then "-a" else ""} \
      ~{if (list_matches_evalue) then "-e" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (overlap) then "--overlap" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    false_add_convert: "false           add backtrace string (convert to alignments with mmseqs convertalis utility)"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]"
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    overlap: "0.000           maximum overlap"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}