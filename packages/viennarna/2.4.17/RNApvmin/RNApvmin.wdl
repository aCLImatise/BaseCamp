version 1.0

task RNApvmin {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Float? tau_sigma_ratio
    Int? objective_function
    Int? sample_size
    Boolean? nonredundant
    File? intermediate_path
    Int? initial_vector
    Int? minimizer
    Float? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Int? max_bp_span
    String program
    String calculations_dot
  }
  command <<<
    RNApvmin \
      ~{program} \
      ~{calculations_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(tau_sigma_ratio) then ("--tauSigmaRatio " +  '"' + tau_sigma_ratio + '"') else ""} \
      ~{if defined(objective_function) then ("--objectiveFunction " +  '"' + objective_function + '"') else ""} \
      ~{if defined(sample_size) then ("--sampleSize " +  '"' + sample_size + '"') else ""} \
      ~{if (nonredundant) then "--nonRedundant" else ""} \
      ~{if defined(intermediate_path) then ("--intermediatePath " +  '"' + intermediate_path + '"') else ""} \
      ~{if defined(initial_vector) then ("--initialVector " +  '"' + initial_vector + '"') else ""} \
      ~{if defined(minimizer) then ("--minimizer " +  '"' + minimizer + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    tau_sigma_ratio: "Ratio of the weighting factors tau and sigma.\\n(default=`1.0')"
    objective_function: "The energies of the perturbation vector and the\\ndiscripancies between predicted and observed\\npairing probabilities contribute to the\\nobjective function. This parameter defines,\\nwhich function is used to process the\\ncontributions before summing them up.\\n0 square\\n1 absolute.  (default=`0')"
    sample_size: "The iterative minimization process requires to\\nevaluate the gradient of the objective\\nfunction.  (default=`1000')"
    nonredundant: "Enable non-redundant sampling strategy.\\n(default=off)"
    intermediate_path: "Write an output file for each iteration of the\\nminimization process."
    initial_vector: "Specify the vector of initial pertubations.\\n(default=`0')"
    minimizer: "Set the minimizing algorithm used for finding\\nan appropriate perturbation vector.\\n(possible values=\\\"conjugate_fr\\\",\\n\\\"conjugate_pr\\\", \\\"vector_bfgs\\\",\\n\\\"vector_bfgs2\\\", \\\"steepest_descent\\\",\\n\\\"default\\\" default=`default')"
    temp: "Rescale energy parameters to a temperature in\\ndegrees centigrade.  (default=`37.0')"
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins.  (default=off)"
    dangles: "Specify \\\"dangling end\\\" model for bases\\nadjacent to helices in free ends and\\nmulti-loops.  (default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).  (default=off)"
    no_gu: "Do not allow GU pairs.  (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices.\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    max_bp_span: "Set the maximum base pair span.  (default=`-1')"
    program: "-j, --numThreads=INT          Set the number of threads used for"
    calculations_dot: "--shapeConversion=STRING  Specify the method used to convert SHAPE"
  }
  output {
    File out_stdout = stdout()
    File out_intermediate_path = "${in_intermediate_path}"
  }
}