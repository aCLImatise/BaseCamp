version 1.0

task RNApaln {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? print_alignment
    Boolean? noconv
    String? mode
    String? gap_o
    String? gape
    String? seq_w
    Boolean? end_gaps
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
  }
  command <<<
    RNApaln \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--printAlignment" false="" print_alignment} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(gap_o) then ("--gapo " +  '"' + gap_o + '"') else ""} \
      ~{if defined(gape) then ("--gape " +  '"' + gape + '"') else ""} \
      ~{if defined(seq_w) then ("--seqw " +  '"' + seq_w + '"') else ""} \
      ~{true="--endgaps" false="" end_gaps} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    print_alignment: "[=filename] Print an \"alignment\" with gaps of the profiles The aligned structures are written to filename, if specified Otherwise output is written to stdout, unless the -Xm option is set in which case \"backtrack.file\" is used. (default=`stdout')"
    noconv: "Do not automatically substitude nucleotide \"T\" with \"U\" (default=off)"
    mode: "Set the alignment mode to be used"
    gap_o: "Set the gap open penalty"
    gape: "Set the gap extension penalty"
    seq_w: "Set the weight of sequence (compared to structure) in the scoring function."
    end_gaps: "Use free end-gaps (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
  }
}