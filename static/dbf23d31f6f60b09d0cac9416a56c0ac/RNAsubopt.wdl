version 1.0

task RNAsubopt {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? noconv
    File? in_file
    Boolean? outfile
    Boolean? auto_id
    String? id_prefix
    String? shape_conversion
    String? delta_energy
    String? delta_energy_post
    Boolean? sorted
    String? stoch_bt
    String? stoch_bt_en
    Boolean? nonredundant
    Boolean? circ
    Boolean? dos
    Boolean? zuker
    Boolean? g_quad
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? log_ml
    String? param_file
    String contributions
    String aldot
  }
  command <<<
    RNAsubopt \
      ~{contributions} \
      ~{aldot} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{if defined(delta_energy_post) then ("--deltaEnergyPost " +  '"' + delta_energy_post + '"') else ""} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(stoch_bt_en) then ("--stochBT_en " +  '"' + stoch_bt_en + '"') else ""} \
      ~{true="--nonRedundant" false="" nonredundant} \
      ~{true="--circ" false="" circ} \
      ~{true="--dos" false="" dos} \
      ~{true="--zuker" false="" zuker} \
      ~{true="--gquad" false="" g_quad} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{true="--logML" false="" log_ml} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose (default=off)"
    noconv: "Do not automatically substitude nucleotide \"T\" with \"U\" (default=off)"
    in_file: "Read a file instead of reading from stdin"
    outfile: "[=<filename>]    Print output to file instead of stdout"
    auto_id: "Automatically generate an ID for each sequence. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`sequence')"
    shape_conversion: "+ [optional parameters]"
    delta_energy: "Compute suboptimal structures with energy in a certain range of the optimum (kcal/mol). Default is calculation of mfe structure only."
    delta_energy_post: "Only print structures with energy within range of the mfe after post reevaluation of energies."
    sorted: "Sort the suboptimal structures by energy. (default=off)"
    stoch_bt: "Instead of producing all suboptimals in an energy range, produce a random sample of suboptimal structures, drawn with probabilities equal to their Boltzmann weights via stochastic backtracking in the partition function. The -e and -p options are mutually exclusive."
    stoch_bt_en: "Same as \"--stochBT\" but also print out the energies and probabilities of the backtraced structures."
    nonredundant: "Enable non-redundant sampling strategy. (default=off)"
    circ: "Assume a circular (instead of linear) RNA molecule. (default=off)"
    dos: "Compute density of states instead of secondary structures (default=off)"
    zuker: "Compute Zuker suboptimals instead of all suboptimal structures within an engery band around the MFE. (default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the structure prediction algorithm (no support of G-quadruplex prediction for stochastic backtracking and Zuker-style suboptimals yet) (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    log_ml: "Recalculate energies of structures using a logarithmic energy function for multi-loops before output.  (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    contributions: "(default=`D')"
    aldot: "(default=`O')"
  }
}