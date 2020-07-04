version 1.0

task RNAPKplex {
  input {
    Boolean? detailed_help
    Float? cut_off
    String? temp
    Boolean? no_tetra
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? noconv
    String? nsp
    String? energy_cut_off
    String? param_file
    Boolean? verbose
    String? sub_opts
  }
  command <<<
    RNAPKplex \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(nsp) then ("--nsp " +  '"' + nsp + '"') else ""} \
      ~{if defined(energy_cut_off) then ("--energyCutoff " +  '"' + energy_cut_off + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(sub_opts) then ("--subopts " +  '"' + sub_opts + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    cut_off: "Report only base pairs with an average probability > cutoff in the dot plot (default=`0.01')"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special stabilizing energies for certain tetra-loops. Mostly for testing. (default=off)"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    noconv: "Do not automatically substitude nucleotide \"T\" with \"U\" (default=off)"
    nsp: "Allow other pairs in addition to the usual AU,GC,and GU pairs. (default=`empty')"
    energy_cut_off: "Energy cutoff or pseudoknot initiation cost. Minimum energy gain of a pseudoknot interaction for it to be returned. Pseudoknots with smaller energy gains are rejected. (default=`-8.10')"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    verbose: "print verbose output (default=off)"
    sub_opts: "print suboptimal structures whose energy difference of the pseudoknot to the optimum pseudoknot is smaller than the given value. (default=`0.0')"
  }
}