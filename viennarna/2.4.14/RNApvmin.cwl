class: CommandLineTool
id: RNApvmin.cwl
inputs:
- id: file_shape
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: num_threads
  doc: Set the number of threads used for calculations (only available when compiled
    with OpenMP support)
  type: long
  inputBinding:
    prefix: --numThreads
- id: shape_conversion
  doc: /C/S/L/O  + [optional parameters] Specify the method used to convert SHAPE
    reactivities to pairing probabilities. (default=`O')
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: tau_sigma_ratio
  doc: Ratio of the weighting factors tau and sigma. (default=`1.0')
  type: string
  inputBinding:
    prefix: --tauSigmaRatio
- id: objective_function
  doc: The energies of the perturbation vector and the discripancies between predicted
    and observed pairing probabilities contribute to the objective function. This
    parameter defines, which function is used to process the contributions before
    summing them up. 0 square 1 absolute (default=`0')
  type: long
  inputBinding:
    prefix: --objectiveFunction
- id: sample_size
  doc: The iterative minimization process requires to evaluate the gradient of the
    objective function. A sample size of 0 leads to an analytical evaluation which
    scales as O(N^4). Choosing a sample size >0 estimates the gradient by sampling
    the given number of sequences from the ensemble, which is much faster. (default=`1000')
  type: long
  inputBinding:
    prefix: --sampleSize
- id: nonredundant
  doc: Enable non-redundant sampling strategy. (default=off)
  type: boolean
  inputBinding:
    prefix: --nonRedundant
- id: intermediate_path
  doc: Write an output file for each iteration of the minimization process. Each file
    contains the used perturbation vector and the score of the objective function.
    The number of the iteration will be appended to the given path.
  type: string
  inputBinding:
    prefix: --intermediatePath
- id: initial_vector
  doc: Defines the initial perturbation vector which will be used as starting vector
    for the minimization process. The value 0 results in a null vector. Every other
    value x will be used to populate the initial vector with random numbers from the
    interval [-x,x]. (default=`0')
  type: string
  inputBinding:
    prefix: --initialVector
- id: minimizer
  doc: Set the minimizing algorithm used for finding an appropriate perturbation vector.
    The default option uses a custom implementation of the gradient descent algorithms
    while all other options represent various algorithms implemented in the GNU Scientific
    Library. When the GNU Scientific Library can not be found, only the default minimizer
    is available. (possible values="conjugate_fr", "conjugate_pr", "vector_bfgs",
    "vector_bfgs2", "steepest_descent", "default" default=`default')
  type: string
  inputBinding:
    prefix: --minimizer
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: no_gu
  doc: Do not allow GU pairs (default=off)
  type: boolean
  inputBinding:
    prefix: --noGU
- id: no_closing_gu
  doc: Do not allow GU pairs at the end of helices (default=off)
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: max_bp_span
  doc: Set the maximum base pair span (default=`-1')
  type: long
  inputBinding:
    prefix: --maxBPspan
outputs: []
cwlVersion: v1.1
baseCommand:
- RNApvmin
