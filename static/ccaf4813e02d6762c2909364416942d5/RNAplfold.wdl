version 1.0

task RNAplfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Int? winsize
    Int? span
    Float? cut_off
    Boolean? print_on_the_fly
    Int? u_length
    Boolean? opening_energies
    Boolean? noconv
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    Boolean? binaries
  }
  command <<<
    RNAplfold \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(winsize) then ("--winsize " +  '"' + winsize + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--print_onthefly" false="" print_on_the_fly} \
      ~{if defined(u_length) then ("--ulength " +  '"' + u_length + '"') else ""} \
      ~{true="--opening_energies" false="" opening_energies} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{true="--binaries" false="" binaries}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    full_help: "Print help, including hidden options, and exit"
    winsize: "Average the pair probabilities over windows of  given size (default=`70')"
    span: "Set the maximum allowed separation of a base pair  to span. I.e. no pairs (i,j) with j-i > span  will be allowed. Defaults to winsize if  parameter is omitted"
    cut_off: "Report only base pairs with an average probability  > cutoff in the dot plot (default=`0.01')"
    print_on_the_fly: "Save memory by printing out everything during  computation. NOTE: activated per default for sequences over  1M bp. (default=off)"
    u_length: "Compute the mean probability that regions of  length 1 to a given length are unpaired. Output  is saved in a _lunp file. (default=`31')"
    opening_energies: "Switch output from probabilities to their  logarithms, which are NOT exactly the mean  energies needed to the respective stretch of  bases! NOTE: This actives -u option. (default=off)"
    noconv: "Do not automatically substitude nucleotide \"T\"  with \"U\" (default=off)"
    temp: "Rescale energy parameters to a temperature of temp  C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop hairpins.  Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases  adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices  of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of  using the default parameter set."
    binaries: "Output accessibility profiles in binary format .  (default=off)"
  }
}