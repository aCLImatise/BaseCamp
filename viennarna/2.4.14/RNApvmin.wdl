version 1.0

task RNApvmin {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? shape_conversion
    Float? tau_sigma_ratio
    Int? objective_function
    Int? sample_size
    Boolean? nonredundant
    Int? intermediate_path
    Int? initial_vector
    Int? minimizer
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Int? max_bp_span
    String program
  }
  command <<<
    RNApvmin \
      ~{program} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
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
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    shape_conversion: "+ [optional parameters]\\nSpecify the method used to convert SHAPE\\nreactivities to pairing probabilities.\\n(default=`O')"
    tau_sigma_ratio: "Ratio of the weighting factors tau and sigma.\\n(default=`1.0')"
    objective_function: "The energies of the perturbation vector and the\\ndiscripancies between predicted and observed\\npairing probabilities contribute to the\\nobjective function. This parameter defines,\\nwhich function is used to process the\\ncontributions before summing them up.\\n0 square\\n1 absolute\\n(default=`0')"
    sample_size: "The iterative minimization process requires to\\nevaluate the gradient of the objective\\nfunction. A sample size of 0 leads to an\\nanalytical evaluation which scales as O(N^4).\\nChoosing a sample size >0 estimates the\\ngradient by sampling the given number of\\nsequences from the ensemble, which is much\\nfaster.\\n(default=`1000')"
    nonredundant: "Enable non-redundant sampling strategy.\\n(default=off)"
    intermediate_path: "Write an output file for each iteration of the\\nminimization process. Each file contains the\\nused perturbation vector and the score of the\\nobjective function. The number of the\\niteration will be appended to the given path."
    initial_vector: "Defines the initial perturbation vector which\\nwill be used as starting vector for the\\nminimization process. The value 0 results in\\na null vector. Every other value x will be\\nused to populate the initial vector with\\nrandom numbers from the interval [-x,x].\\n(default=`0')"
    minimizer: "Set the minimizing algorithm used for finding\\nan appropriate perturbation vector. The\\ndefault option uses a custom implementation\\nof the gradient descent algorithms while all\\nother options represent various algorithms\\nimplemented in the GNU Scientific Library.\\nWhen the GNU Scientific Library can not be\\nfound, only the default minimizer is\\navailable.\\n(possible values=\\\"conjugate_fr\\\",\\n\\\"conjugate_pr\\\", \\\"vector_bfgs\\\",\\n\\\"vector_bfgs2\\\", \\\"steepest_descent\\\",\\n\\\"default\\\" default=`default')"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    max_bp_span: "Set the maximum base pair span\\n(default=`-1')"
    program: "-j, --numThreads=INT          Set the number of threads used for calculations\\n(only available when compiled with OpenMP\\nsupport)"
  }
  output {
    File out_stdout = stdout()
  }
}