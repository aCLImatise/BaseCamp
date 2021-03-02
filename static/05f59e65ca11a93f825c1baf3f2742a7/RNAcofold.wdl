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
    File? id_prefix
    Int? max_bp_span
    Boolean? constraint
    Boolean? batch
    Boolean? canonical_bp_only
    Boolean? enforce_constraint
    File? shape
    String? shape_conversion
    Boolean? part_func
    Boolean? all_pf
    Boolean? concentrations
    File? conc_file
    Boolean? centroid
    Boolean? me_a
    Boolean? g_quad
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String structure_dot
    String predictions
    String data_dot
  }
  command <<<
    RNAcofold \
      ~{structure_dot} \
      ~{predictions} \
      ~{data_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if (nops) then "--noPS" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (canonical_bp_only) then "--canonicalBPonly" else ""} \
      ~{if (enforce_constraint) then "--enforceConstraint" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if (all_pf) then "--all_pf" else ""} \
      ~{if (concentrations) then "--concentrations" else ""} \
      ~{if defined(conc_file) then ("--concfile " +  '"' + conc_file + '"') else ""} \
      ~{if (centroid) then "--centroid" else ""} \
      ~{if (me_a) then "--MEA" else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
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
    verbose: "Be verbose.\\n(default=off)"
    jobs: "[=number]           Split batch input into jobs and start\\nprocessing in parallel using multiple\\nthreads. A value of 0 indicates to use as\\nmany parallel threads as computation cores\\nare available.\\n(default=`0')"
    nops: "Do not produce postscript drawing of the mfe"
    noconv: "Do not automatically substitute nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`sequence')"
    max_bp_span: "Set the maximum base pair span\\n(default=`-1')"
    constraint: "[=<filename>] Calculate structures subject to constraints.\\n(default=`')"
    batch: "Use constraints for multiple sequences.\\n(default=off)"
    canonical_bp_only: "Remove non-canonical base pairs from the\\nstructure constraint\\n(default=off)"
    enforce_constraint: "Enforce base pairs given by round brackets ( )\\nin structure constraint\\n(default=off)"
    shape: "Use SHAPE reactivity data to guide structure"
    shape_conversion: "/C/S/L/O  + [optional parameters]\\nSelect method to convert SHAPE reactivities to\\npairing probabilities.\\n(default=`O')"
    part_func: "[=INT]          Calculate the partition function and base\\npairing probability matrix in addition to the\\nmfe structure. Default is calculation of mfe\\nstructure only.\\n(default=`1')"
    all_pf: "[=INT]            Compute the partition function and free\\nenergies not only of the hetero-dimer\\nconsisting of the two input sequences (the\\n\\\"AB dimer\\\"), but also of the homo-dimers AA\\nand BB as well as A and B monomers.\\n(default=`1')"
    concentrations: "In addition to everything listed under the -a\\noption, read in initial monomer\\nconcentrations and compute the expected\\nequilibrium concentrations of the 5 possible\\nspecies (AB, AA, BB, A, B).\\n(default=off)"
    conc_file: "Specify a file with initial concentrations for\\nthe two sequences."
    centroid: "Compute the centroid structure.\\n(default=off)"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy)\\nstructure, where the expected accuracy is\\ncomputed from the pair probabilities: each\\nbase pair (i,j) gets a score 2*gamma*p_ij and\\nthe score of an unpaired base is given by the\\nprobability of not forming a pair.\\n(default=`1.')"
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm.\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    structure_dot: "(default=off)"
    predictions: "--shapeMethod=[D/Z/W] + [optional parameters]"
    data_dot: "(default=`D')"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}