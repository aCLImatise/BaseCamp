version 1.0

task RNAcofold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? jobs
    Boolean? nops
    Boolean? noconv
    Boolean? auto_id
    String? id_prefix
    String? shape_conversion
    Boolean? part_func
    Boolean? all_pf
    Boolean? concentrations
    File? conc_file
    Boolean? centroid
    Boolean? me_a
    Boolean? g_quad
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    String data_dot
  }
  command <<<
    RNAcofold \
      ~{data_dot} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--jobs" false="" jobs} \
      ~{true="--noPS" false="" nops} \
      ~{true="--noconv" false="" noconv} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{true="--partfunc" false="" part_func} \
      ~{true="--all_pf" false="" all_pf} \
      ~{true="--concentrations" false="" concentrations} \
      ~{if defined(conc_file) then ("--concfile " +  '"' + conc_file + '"') else ""} \
      ~{true="--centroid" false="" centroid} \
      ~{true="--MEA" false="" me_a} \
      ~{true="--gquad" false="" g_quad} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose. (default=off)"
    jobs: "[=number]           Split batch input into jobs and start processing in parallel using multiple threads. A value of 0 indicates to use as many parallel threads as computation cores are available. (default=`0')"
    nops: "Do not produce postscript drawing of the mfe structure. (default=off)"
    noconv: "Do not automatically substitute nucleotide \"T\" with \"U\" (default=off)"
    auto_id: "Automatically generate an ID for each sequence. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`sequence')"
    shape_conversion: "+ [optional parameters]"
    part_func: "[=INT]          Calculate the partition function and base pairing probability matrix in addition to the mfe structure. Default is calculation of mfe structure only. (default=`1')"
    all_pf: "[=INT]            Compute the partition function and free energies not only of the hetero-dimer consisting of the two input sequences (the \"AB dimer\"), but also of the homo-dimers AA and BB as well as A and B monomers. (default=`1')"
    concentrations: "In addition to everything listed under the -a option, read in initial monomer concentrations and compute the expected equilibrium concentrations of the 5 possible species (AB, AA, BB, A, B). (default=off)"
    conc_file: "Specify a file with initial concentrations for the two sequences."
    centroid: "Compute the centroid structure. (default=off)"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure, where the expected accuracy is computed from the pair probabilities: each base pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given by the probability of not forming a pair. (default=`1.')"
    g_quad: "Incoorporate G-Quadruplex formation into the structure prediction algorithm. (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    data_dot: "(default=`D')"
  }
}