version 1.0

task RNApvmin {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? tau_sigma_ratio
    Int? objective_function
    Int? sample_size
    Boolean? nonredundant
    String? intermediate_path
    String? initial_vector
    String? minimizer
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    Int? max_bp_span
    File file_dot_shape
  }
  command <<<
    RNApvmin \
      ~{file_dot_shape} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(tau_sigma_ratio) then ("--tauSigmaRatio " +  '"' + tau_sigma_ratio + '"') else ""} \
      ~{if defined(objective_function) then ("--objectiveFunction " +  '"' + objective_function + '"') else ""} \
      ~{if defined(sample_size) then ("--sampleSize " +  '"' + sample_size + '"') else ""} \
      ~{true="--nonRedundant" false="" nonredundant} \
      ~{if defined(intermediate_path) then ("--intermediatePath " +  '"' + intermediate_path + '"') else ""} \
      ~{if defined(initial_vector) then ("--initialVector " +  '"' + initial_vector + '"') else ""} \
      ~{if defined(minimizer) then ("--minimizer " +  '"' + minimizer + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    tau_sigma_ratio: "Ratio of the weighting factors tau and sigma. (default=`1.0')"
    objective_function: "The energies of the perturbation vector and the discripancies between predicted and observed pairing probabilities contribute to the objective function. This parameter defines, which function is used to process the contributions before summing them up. 0 square 1 absolute (default=`0')"
    sample_size: "The iterative minimization process requires to evaluate the gradient of the objective function. A sample size of 0 leads to an analytical evaluation which scales as O(N^4). Choosing a sample size >0 estimates the gradient by sampling the given number of sequences from the ensemble, which is much faster. (default=`1000')"
    nonredundant: "Enable non-redundant sampling strategy. (default=off)"
    intermediate_path: "Write an output file for each iteration of the minimization process. Each file contains the used perturbation vector and the score of the objective function. The number of the iteration will be appended to the given path."
    initial_vector: "Defines the initial perturbation vector which will be used as starting vector for the minimization process. The value 0 results in a null vector. Every other value x will be used to populate the initial vector with random numbers from the interval [-x,x]. (default=`0')"
    minimizer: "Set the minimizing algorithm used for finding an appropriate perturbation vector. The default option uses a custom implementation of the gradient descent algorithms while all other options represent various algorithms implemented in the GNU Scientific Library. When the GNU Scientific Library can not be found, only the default minimizer is available. (possible values=\"conjugate_fr\", \"conjugate_pr\", \"vector_bfgs\", \"vector_bfgs2\", \"steepest_descent\", \"default\" default=`default')"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    max_bp_span: "Set the maximum base pair span (default=`-1')"
    file_dot_shape: ""
  }
}