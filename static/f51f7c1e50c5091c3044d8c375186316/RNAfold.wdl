version 1.0

task RNAfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? jobs
    File? in_file
    Boolean? outfile
    Boolean? nops
    Boolean? no_dp
    Boolean? noconv
    Boolean? auto_id
    String? id_prefix
    Int? max_bp_span
    Boolean? constraint
    Boolean? batch
    Boolean? canonical_bp_only
    Boolean? enforce_constraint
    File? shape
    String? shape_method
    String? shape_conversion
    Boolean? part_func
    Boolean? me_a
    Boolean? circ
    Boolean? g_quad
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    String? input_zero_dot_fa
    String? input_one_dot_fa
  }
  command <<<
    RNAfold \
      ~{input_zero_dot_fa} \
      ~{input_one_dot_fa} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--jobs" false="" jobs} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--noPS" false="" nops} \
      ~{true="--noDP" false="" no_dp} \
      ~{true="--noconv" false="" noconv} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--batch" false="" batch} \
      ~{true="--canonicalBPonly" false="" canonical_bp_only} \
      ~{true="--enforceConstraint" false="" enforce_constraint} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(shape_method) then ("--shapeMethod " +  '"' + shape_method + '"') else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{true="--partfunc" false="" part_func} \
      ~{true="--MEA" false="" me_a} \
      ~{true="--circ" false="" circ} \
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
    in_file: "Read a file instead of reading from stdin"
    outfile: "[=<filename>]    Print output to file instead of stdout"
    nops: "Do not produce postscript drawing of the mfe structure. (default=off)"
    no_dp: "Do not produce dot-plot postscript file containing base pair or stack probabilitities. (default=off)"
    noconv: "Do not automatically substitute nucleotide \"T\" with \"U\" (default=off)"
    auto_id: "Automatically generate an ID for each sequence. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`sequence')"
    max_bp_span: "Set the maximum base pair span (default=`-1')"
    constraint: "[=<filename>] Calculate structures subject to constraints. (default=`')"
    batch: "Use constraints for multiple sequences. (default=off)"
    canonical_bp_only: "Remove non-canonical base pairs from the structure constraint (default=off)"
    enforce_constraint: "Enforce base pairs given by round brackets ( ) in structure constraint (default=off)"
    shape: "Use SHAPE reactivity data to guide structure predictions"
    shape_method: "|Z|W       Select SHAPE reactivity data incorporation strategy. (default=`D')"
    shape_conversion: "|C|S|L|O Select method to convert SHAPE reactivities to pairing probabilities. (default=`O')"
    part_func: "[=INT]          Calculate the partition function and base pairing probability matrix. (default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure, where the expected accuracy is computed from the pair probabilities: each base pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given by the probability of not forming a pair. (default=`1.')"
    circ: "Assume a circular (instead of linear) RNA molecule. (default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the structure prediction algorithm. (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    input_zero_dot_fa: ""
    input_one_dot_fa: ""
  }
}