version 1.0

task RNAalifold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? constraint
    Boolean? color
    Boolean? aln
    Boolean? nops
    Boolean? part_func
    Boolean? me_a
    Boolean? mis
    Int? stoch_bt
    Int? stoch_bt_en
    Boolean? circ
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? c_factor
    String? n_factor
    Boolean? end_gaps
    String? ribo_sum_file
    Boolean? ribo_sum_scoring
    Boolean? old
    String? param_file
    File file_one_dot_aln
  }
  command <<<
    RNAalifold \
      ~{file_one_dot_aln} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--color" false="" color} \
      ~{true="--aln" false="" aln} \
      ~{true="--noPS" false="" nops} \
      ~{true="--partfunc" false="" part_func} \
      ~{true="--MEA" false="" me_a} \
      ~{true="--mis" false="" mis} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(stoch_bt_en) then ("--stochBT_en " +  '"' + stoch_bt_en + '"') else ""} \
      ~{true="--circ" false="" circ} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{true="--endgaps" false="" end_gaps} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{true="--ribosum_scoring" false="" ribo_sum_scoring} \
      ~{true="--old" false="" old} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    full_help: "Print help, including hidden options, and exit"
    constraint: "Calculate structures subject to constraints. The constraining structure will be read from  'stdin', the alignment has to be given as a  file name on the command line. (default=off)"
    color: "Produce a colored version of the consensus  strcture plot \"alirna.ps\" (default b&w  only) (default=off)"
    aln: "Produce a colored and structure annotated  alignment in PostScript format in the file  \"aln.ps\" in the current directory. (default=off)"
    nops: "Do not produce postscript output (default=off)"
    part_func: "[=INT]          Calculate the partition function and base  pairing probability matrix in addition to the  mfe structure. Default is calculation of mfe  structure only. (default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy)  structure. (default=`1.')"
    mis: "Output \"most informative sequence\" instead of  simple consensus: For each column of the  alignment output the set of nucleotides with  frequence greater than average in IUPAC  notation. (default=off)"
    stoch_bt: "Stochastic backtrack. Compute a certain number  of random structures with a probability  dependend on the partition function. See -p  option in RNAsubopt."
    stoch_bt_en: "same as \"-s\" but also print out the energies  and probabilities of the backtraced  structures."
    circ: "Assume a circular (instead of linear) RNA  molecule. (default=off)"
    temp: "Rescale energy parameters to a temperature of  temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop  hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for  bases adjacent to helices in free ends and  multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs  (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    c_factor: "Set the weight of the covariance term in the  energy function (default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in  the covariance term of the energy function (default=`1.0')"
    end_gaps: "Score pairs with endgaps same as gap-gap pairs. (default=off)"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal  energy model. Matrixes to use should be 6x6  matrices, the order of the terms is AU, CG,  GC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is  chosen according to the minimal and maximal  pairwise identities of the sequences in the  file. (default=off)"
    old: "use old energy evaluation, treating gaps as  characters. (default=off)"
    param_file: "Read energy parameters from paramfile, instead  of using the default parameter set."
    file_one_dot_aln: ""
  }
}