version 1.0

task RNAPKplex {
  input {
    Boolean? detailed_help
    Float? cut_off
    Int? temp
    Boolean? no_tetra
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? noconv
    String? nsp
    Float? energy_cut_off
    File? param_file
    Boolean? verbose
    Float? sub_opts
  }
  command <<<
    RNAPKplex \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(nsp) then ("--nsp " +  '"' + nsp + '"') else ""} \
      ~{if defined(energy_cut_off) then ("--energyCutoff " +  '"' + energy_cut_off + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sub_opts) then ("--subopts " +  '"' + sub_opts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    cut_off: "Report only base pairs with an average probability\\n> cutoff in the dot plot\\n(default=`0.01')"
    temp: "Rescale energy parameters to a temperature of temp\\nC. Default is 37C."
    no_tetra: "Do not include special stabilizing energies for\\ncertain tetra-loops. Mostly for testing.\\n(default=off)"
    no_lp: "Produce structures without lonely pairs (helices\\nof length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    noconv: "Do not automatically substitude nucleotide \\\"T\\\"\\nwith \\\"U\\\"\\n(default=off)"
    nsp: "Allow other pairs in addition to the usual\\nAU,GC,and GU pairs.\\n(default=`empty')"
    energy_cut_off: "Energy cutoff or pseudoknot initiation cost.\\nMinimum energy gain of a pseudoknot interaction\\nfor it to be returned. Pseudoknots with smaller\\nenergy gains are rejected.\\n(default=`-8.10')"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    verbose: "print verbose output\\n(default=off)"
    sub_opts: "print suboptimal structures whose energy\\ndifference of the pseudoknot to the optimum\\npseudoknot is smaller than the given value.\\n(default=`0.0')"
  }
  output {
    File out_stdout = stdout()
  }
}