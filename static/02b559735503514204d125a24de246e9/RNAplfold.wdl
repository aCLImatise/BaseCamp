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
    Float? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String computation_dot
    String logarithms_dot
    String predictions_dot
  }
  command <<<
    RNAplfold \
      ~{computation_dot} \
      ~{logarithms_dot} \
      ~{predictions_dot} \
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
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose.  (default=off)"
    winsize: "Average the pair probabilities over windows of\\ngiven size.  (default=`70')"
    span: "Set the maximum allowed separation of a base\\npair to span."
    cut_off: "Report only base pairs with an average\\nprobability > cutoff in the dot plot.\\n(default=`0.01')"
    print_on_the_fly: "Save memory by printing out everything during"
    u_length: "Compute the mean probability that regions of\\nlength 1 to a given length are unpaired.\\n(default=`31')"
    opening_energies: "Switch output from probabilities to their"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\".  (default=off)"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names).  (default=`sequence')"
    shape: "Use SHAPE reactivity data to guide structure"
    temp: "Rescale energy parameters to a temperature in\\ndegrees centigrade.  (default=`37.0')"
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins.  (default=off)"
    dangles: "Specify \\\"dangling end\\\" model for bases\\nadjacent to helices in free ends and\\nmulti-loops.  (default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).  (default=off)"
    no_gu: "Do not allow GU pairs.  (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices.\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    computation_dot: "(default=off)"
    logarithms_dot: "(default=off)"
    predictions_dot: "Model Details:"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}