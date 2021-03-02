version 1.0

task RNAup {
  input {
    Boolean? detailed_help
    Boolean? full_help
    File? no_output_file
    Boolean? no_header
    Boolean? noconv
    Int? u_length
    String? contributions
    Int? window
    Boolean? include_both
    Int? extend_five
    Int? extend_three
    Boolean? interaction_pairwise
    Boolean? interaction_first
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String program
    String only
  }
  command <<<
    RNAup \
      ~{program} \
      ~{only} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (no_output_file) then "--no_output_file" else ""} \
      ~{if (no_header) then "--no_header" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(u_length) then ("--ulength " +  '"' + u_length + '"') else ""} \
      ~{if defined(contributions) then ("--contributions " +  '"' + contributions + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (include_both) then "--include_both" else ""} \
      ~{if defined(extend_five) then ("--extend5 " +  '"' + extend_five + '"') else ""} \
      ~{if defined(extend_three) then ("--extend3 " +  '"' + extend_three + '"') else ""} \
      ~{if (interaction_pairwise) then "--interaction_pairwise" else ""} \
      ~{if (interaction_first) then "--interaction_first" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    no_output_file: "Do not produce an output file\\n(default=off)"
    no_header: "Do not produce a header with the command line\\nparameters used in the outputfile\\n(default=off)"
    noconv: "Do not automatically substitude nucleotide \\\"T\\\"\\nwith \\\"U\\\"\\n(default=off)"
    u_length: "specifies the length of the unstructured region\\nin the output.\\n(default=`4')"
    contributions: "Specify the contributions listed in the output\\n(default=`S')"
    window: "Determine the maximal length of the region of"
    include_both: "Include the probability of unpaired regions in\\nboth (b) RNAs. By default\\nonly the probability of being unpaired in the\\nlonger RNA (target) is used.\\n(default=off)"
    extend_five: "Extend the region of interaction in the target to\\nsome residues on the 5' side"
    extend_three: "Extend the region of interaction in the target to\\nsome residues on the 3' side"
    interaction_pairwise: "Activate pairwise interaction mode\\n(default=off)"
    interaction_first: "Activate interaction mode using first sequence"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs (helices\\nof length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    program: "-C, --constraint            Calculate structures subject to constraints.\\n(default=off)"
    only: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_no_output_file = "${in_no_output_file}"
  }
}