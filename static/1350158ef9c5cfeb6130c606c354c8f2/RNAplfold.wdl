version 1.0

task RNAplfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Int? span
    Float? cut_off
    Boolean? print_on_the_fly
    Int? u_length
    Boolean? opening_energies
    Boolean? noconv
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Boolean? binaries
    String program
    String computation_dot
  }
  command <<<
    RNAplfold \
      ~{program} \
      ~{computation_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (print_on_the_fly) then "--print_onthefly" else ""} \
      ~{if defined(u_length) then ("--ulength " +  '"' + u_length + '"') else ""} \
      ~{if (opening_energies) then "--opening_energies" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (binaries) then "--binaries" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    span: "Set the maximum allowed separation of a base pair\\nto span. I.e. no pairs (i,j) with j-i > span\\nwill be allowed. Defaults to winsize if\\nparameter is omitted"
    cut_off: "Report only base pairs with an average probability\\n> cutoff in the dot plot\\n(default=`0.01')"
    print_on_the_fly: "Save memory by printing out everything during"
    u_length: "Compute the mean probability that regions of\\nlength 1 to a given length are unpaired. Output\\nis saved in a _lunp file.\\n(default=`31')"
    opening_energies: "Switch output from probabilities to their\\nlogarithms, which are NOT exactly the mean\\nenergies needed to the respective stretch of\\nbases!\\nNOTE: This actives -u option.\\n(default=off)"
    noconv: "Do not automatically substitude nucleotide \\\"T\\\"\\nwith \\\"U\\\"\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of temp\\nC. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop hairpins.\\nMostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs (helices\\nof length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    binaries: "Output accessibility profiles in binary format\\n.  (default=off)"
    program: "-W, --winsize=size         Average the pair probabilities over windows of \\ngiven size\\n(default=`70')"
    computation_dot: "NOTE: activated per default for sequences over "
  }
  output {
    File out_stdout = stdout()
  }
}