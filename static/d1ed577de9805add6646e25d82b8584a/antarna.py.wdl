version 1.0

task Antarnapy {
  input {
    String? cseq
    Int? level
    Int? tgc
    Int? tgc_max
    Float? tgc_var
    Float? temperature
    File? param_file
    Boolean? no_gu_base_pair
    Boolean? no_lbp_management
    Int? no_of_colonies
    File? output_file
    Boolean? rpy
    String? name
    Boolean? verbose
    Boolean? output_verbose
    Boolean? plot
    Int? seed
    String? improve_procedure
    Int? resets
    Int? ants_per_selection
    Int? convergence_count
    Int? ants_ter_conv
    Float? alpha
    Float? beta
    Int? omega
    Float? er
    Float? cstr_weight
    Float? cgc_weight
    Float? cseq_weight
    Int? time
  }
  command <<<
    antarna_py \
      ~{if defined(cseq) then ("--Cseq " +  '"' + cseq + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(tgc) then ("--tGC " +  '"' + tgc + '"') else ""} \
      ~{if defined(tgc_max) then ("--tGCmax " +  '"' + tgc_max + '"') else ""} \
      ~{if defined(tgc_var) then ("--tGCvar " +  '"' + tgc_var + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (no_gu_base_pair) then "--noGUBasePair" else ""} \
      ~{if (no_lbp_management) then "--noLBPmanagement" else ""} \
      ~{if defined(no_of_colonies) then ("--noOfColonies " +  '"' + no_of_colonies + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if (rpy) then "-rPY" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (output_verbose) then "--output_verbose" else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(improve_procedure) then ("--improve_procedure " +  '"' + improve_procedure + '"') else ""} \
      ~{if defined(resets) then ("--Resets " +  '"' + resets + '"') else ""} \
      ~{if defined(ants_per_selection) then ("--ants_per_selection " +  '"' + ants_per_selection + '"') else ""} \
      ~{if defined(convergence_count) then ("--ConvergenceCount " +  '"' + convergence_count + '"') else ""} \
      ~{if defined(ants_ter_conv) then ("--antsTerConv " +  '"' + ants_ter_conv + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(omega) then ("--omega " +  '"' + omega + '"') else ""} \
      ~{if defined(er) then ("--ER " +  '"' + er + '"') else ""} \
      ~{if defined(cstr_weight) then ("--Cstrweight " +  '"' + cstr_weight + '"') else ""} \
      ~{if defined(cgc_weight) then ("--Cgcweight " +  '"' + cgc_weight + '"') else ""} \
      ~{if defined(cseq_weight) then ("--Cseqweight " +  '"' + cseq_weight + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""}
  >>>
  parameter_meta {
    cseq: "Sequence constraint using RNA nucleotide alphabet {A,C,G,U} and wild-card \\\"N\\\".\\n(TYPE: str)"
    level: "Sets the level of allowed influence of sequence constraint on the structure constraint [0:no influence; 3:extensive influence].\\n(TYPE: int)"
    tgc: "Objective target GC content in [0,1].\\n(TYPE: parseGC)"
    tgc_max: "Provides a maximum tGC value [0,1] for the case of uniform distribution sampling. The regular tGC value serves as minimum value.\\n(DEFAULT: -1.0, TYPE: float)"
    tgc_var: "Provides a tGC variance (sigma square) for the case of normal distribution sampling. The regular tGC value serves as expectation value (mu).\\n(DEFAULT: -1.0, TYPE: float)"
    temperature: "Provides a temperature for the folding algorithms.\\n(DEFAULT: 37.0, TYPE: float)"
    param_file: "Changes the energy parameterfile of RNAfold. If using this explicitly, please provide a suitable energy file delivered by RNAfold.\\n(DEFAULT: , TYPE: str)"
    no_gu_base_pair: "Forbid GU base pairs."
    no_lbp_management: "Disallowing antaRNA lonely base pair-management."
    no_of_colonies: "Number of sequences which shall be produced.\\n(TYPE: int)"
    output_file: "Provide a path and an output file, e.g. \\\"/path/to/the/target_file\\\".\\n(DEFAULT: STDOUT, TYPE: str)"
    rpy: "Switch on PYTHON compatible behavior.\\n(DEFAULT: False)"
    name: "Defines a name which is used in the sequence output.\\n(DEFAULT: antaRNA, TYPE: str)"
    verbose: "Displayes intermediate output."
    output_verbose: "Prints additional features and stats to the headers of the produced sequences. Also adds the structure of the sequence."
    plot: "Print Terrain Nodes and edges files."
    seed: "Provides a seed value for the used pseudo random number generator.\\n(DEFAULT: None, TYPE: str)"
    improve_procedure: "Select the improving method.  h=hierarchical, s=score_based.\\n(DEFAULT: s, TYPE: str)"
    resets: "Amount of maximal terrain resets, until the best solution is retuned as solution.\\n(DEFAULT: 5, TYPE: int)"
    ants_per_selection: "best out of k ants.\\n(DEFAULT: 10, TYPE: int)"
    convergence_count: "Delimits the convergence count criterion for a reset.\\n(DEFAULT: 130, TYPE: int)"
    ants_ter_conv: "Delimits the amount of internal ants for termination convergence criterion for a reset.\\n(DEFAULT: 50, TYPE: int)"
    alpha: "Sets alpha, probability weight for terrain pheromone influence. [0,1]\\n(DEFAULT: 1.0, TYPE: float)"
    beta: "Sets beta, probability weight for terrain path influence. [0,1]\\n(DEFAULT: 1.0, TYPE: float)"
    omega: "Sets the value, which is used in the mimiced 1/x evaluation function in order to set a crossing point on the y-axis."
    er: "Pheromone evaporation rate.\\n(DEFAULT: 0.2, TYPE: float)"
    cstr_weight: "Structure constraint quality weighting factor. [0,1]\\n(DEFAULT: 0.5, TYPE: float)"
    cgc_weight: "GC content constraint quality weighting factor. [0,1]\\n(DEFAULT: 5.0, TYPE: float)"
    cseq_weight: "Sequence constraint quality weighting factor. [0,1]\\n(DEFAULT: 1.0, TYPE: float)"
    time: "Limiting runtime [seconds]\\n(DEFAULT: 600, TYPE: int)\\nExample calls:\\npython antaRNA_vXY.py -Cstr \\\"...(((...)))...\\\" -tGC 0.5 -n 2 -v\\npython antaRNA_vXY.py -Cstr \\\".........aaa(((...)))aaa.........\\\" -tGC 0.5 -n 10 --output_file /path/to/antaRNA_TESTRUN -v\\npython antaRNA_vXY.py -Cstr \\\"BBBBB....AAA(((...)))AAA....BBBBB\\\" -Cseq \\\"NNNNANNNNNCNNNNNNNNNNNGNNNNNNUNNN\\\" --tGC 0.5 -n 10\\n#########################################################################\\n#       --- Hail to the Queen!!! All power to the swarm!!! ---          #\\n#########################################################################\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}