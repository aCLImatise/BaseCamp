version 1.0

task RNAplfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Int? winsize
    Int? span
    Float? cut_off
    Boolean? print_on_the_fly
    Int? u_length
    Boolean? opening_energies
    Boolean? noconv
    Boolean? auto_id
    File? id_prefix
    File? shape
    String? shape_conversion
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Boolean? binaries
    String computation_dot
    String predictions
    String data_dot
  }
  command <<<
    RNAplfold \
      ~{computation_dot} \
      ~{predictions} \
      ~{data_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(winsize) then ("--winsize " +  '"' + winsize + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (print_on_the_fly) then "--print_onthefly" else ""} \
      ~{if defined(u_length) then ("--ulength " +  '"' + u_length + '"') else ""} \
      ~{if (opening_energies) then "--opening_energies" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (binaries) then "--binaries" else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose.\\n(default=off)"
    winsize: "Average the pair probabilities over windows of\\ngiven size\\n(default=`70')"
    span: "Set the maximum allowed separation of a base\\npair to span. I.e. no pairs (i,j) with j-i >\\nspan will be allowed. Defaults to winsize if\\nparameter is omitted"
    cut_off: "Report only base pairs with an average\\nprobability > cutoff in the dot plot\\n(default=`0.01')"
    print_on_the_fly: "Save memory by printing out everything during"
    u_length: "Compute the mean probability that regions of\\nlength 1 to a given length are unpaired.\\nOutput is saved in a _lunp file.\\n(default=`31')"
    opening_energies: "Switch output from probabilities to their\\nlogarithms, which are NOT exactly the mean\\nenergies needed to the respective stretch of\\nbases!\\nNOTE: This actives -u option.\\n(default=off)"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`sequence')"
    shape: "Use SHAPE reactivity data to guide structure"
    shape_conversion: "+ [optional parameters]\\nSelect method to convert SHAPE reactivities to\\npairing probabilities.\\n(default=`O')"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    binaries: "Output accessibility profiles in binary format\\n.  (default=off)"
    computation_dot: "NOTE: activated per default for sequences"
    predictions: "--shapeMethod=[D/Z/W] + [optional parameters]"
    data_dot: "(default=`D')"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}