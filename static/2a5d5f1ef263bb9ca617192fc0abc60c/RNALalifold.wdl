version 1.0

task RNALalifold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? csv
    Boolean? part_func
    Float? cut_off
    Boolean? mis
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Float? c_factor
    Float? n_factor
    File? ribo_sum_file
    Boolean? ribo_sum_scoring
    String structures_dot
    String program
  }
  command <<<
    RNALalifold \
      ~{structures_dot} \
      ~{program} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if (ribo_sum_scoring) then "--ribosum_scoring" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    csv: "Create comma seperated output (csv)\\n(default=off)"
    part_func: "[=INT]          Calculate the partition function and base\\npairing probability matrix in addition to the\\nmfe structure.  (default=`1')"
    cut_off: "Report only base pairs with an average\\nprobability > cutoff in the dot plot\\n(default=`0.01')"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus: For each column of the\\nalignment output the set of nucleotides with\\nfrequence greater than average in IUPAC\\nnotation.\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    c_factor: "Set the weight of the covariance term in the\\nenergy function\\n(default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in\\nthe covariance term of the energy function\\n(default=`1.0')"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal\\nenergy model. Matrixes to use should be 6x6\\nmatrices, the order of the terms is AU, CG,\\nGC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is\\nchosen according to the minimal and maximal\\npairwise identities of the sequences in the\\nfile.\\n(default=off)"
    structures_dot: "-h, --help                    Print help and exit"
    program: "-L, --span=INT                Set the maximum allowed separation of a base \\npair to span. I.e. no pairs (i,j) with\\nj-i>span will be allowed.\\n(default=`70')"
  }
  output {
    File out_stdout = stdout()
  }
}