version 1.0

task CoFold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    Boolean? nops
    Boolean? part_func
    Boolean? me_a
    Boolean? circ
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String program
    String structure_dot
    String molecule_dot
  }
  command <<<
    CoFold \
      ~{program} \
      ~{structure_dot} \
      ~{molecule_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (nops) then "--noPS" else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if (me_a) then "--MEA" else ""} \
      ~{if (circ) then "--circ" else ""} \
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
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    nops: "Do not produce postscript drawing of the mfe"
    part_func: "[=INT]          Calculate the partition function and base\\npairing probability matrix.\\n(default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy)\\nstructure, where the expected accuracy is\\ncomputed from the pair probabilities: each\\nbase pair (i,j) gets a score 2*gamma*p_ij and\\nthe score of an unpaired base is given by the\\nprobability of not forming a pair.\\n(default=`1.')"
    circ: "Assume a circular (instead of linear) RNA"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    program: "-C, --constraint              Calculate structures subject to constraints.\\n(default=off)"
    structure_dot: "(default=off)"
    molecule_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}