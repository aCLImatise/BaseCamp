version 1.0

task RNApaln {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    String? mode
    String? gap_o
    String? gape
    String? seq_w
    Boolean? end_gaps
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String program
  }
  command <<<
    RNApaln \
      ~{program} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(gap_o) then ("--gapo " +  '"' + gap_o + '"') else ""} \
      ~{if defined(gape) then ("--gape " +  '"' + gape + '"') else ""} \
      ~{if defined(seq_w) then ("--seqw " +  '"' + seq_w + '"') else ""} \
      ~{if (end_gaps) then "--endgaps" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    mode: "Set the alignment mode to be used"
    gap_o: "Set the gap open penalty"
    gape: "Set the gap extension penalty"
    seq_w: "Set the weight of sequence (compared to\\nstructure) in the scoring function."
    end_gaps: "Use free end-gaps\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    program: "-B, --printAlignment[=filename]\\nPrint an \\\"alignment\\\" with gaps of the\\nprofiles\\nThe aligned structures are written to\\nfilename, if specified\\nOtherwise output is written to stdout, unless\\nthe -Xm option is set in which case\\n\\\"backtrack.file\\\" is used.\\n(default=`stdout')"
  }
  output {
    File out_stdout = stdout()
  }
}