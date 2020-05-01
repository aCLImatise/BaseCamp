#!/usr/bin/env cwl-runner

baseCommand:
- RNApvmin
class: CommandLineTool
cwlVersion: v1.0
id: rnapvmin
inputs:
- doc: ''
  id: file_shape
  inputBinding:
    position: 0
  type: File
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Set the number of threads used for calculations (only available when compiled
    with OpenMP support)
  id: num_threads
  inputBinding:
    prefix: --numThreads
  type: long
- doc: /C/S/L/O  + [optional parameters] Specify the method used to convert SHAPE
    reactivities to pairing probabilities. (default=`O')
  id: shape_conversion
  inputBinding:
    prefix: --shapeConversion
  type: string
- doc: Ratio of the weighting factors tau and sigma. (default=`1.0')
  id: tau_sigma_ratio
  inputBinding:
    prefix: --tauSigmaRatio
  type: string
- doc: The energies of the perturbation vector and the discripancies between predicted
    and observed pairing probabilities contribute to the objective function. This
    parameter defines, which function is used to process the contributions before
    summing them up. 0 square 1 absolute (default=`0')
  id: objective_function
  inputBinding:
    prefix: --objectiveFunction
  type: long
- doc: The iterative minimization process requires to evaluate the gradient of the
    objective function. A sample size of 0 leads to an analytical evaluation which
    scales as O(N^4). Choosing a sample size >0 estimates the gradient by sampling
    the given number of sequences from the ensemble, which is much faster. (default=`1000')
  id: sample_size
  inputBinding:
    prefix: --sampleSize
  type: long
- doc: Enable non-redundant sampling strategy. (default=off)
  id: nonredundant
  inputBinding:
    prefix: --nonRedundant
  type: boolean
- doc: Write an output file for each iteration of the minimization process. Each file
    contains the used perturbation vector and the score of the objective function.
    The number of the iteration will be appended to the given path.
  id: intermediate_path
  inputBinding:
    prefix: --intermediatePath
  type: string
- doc: Defines the initial perturbation vector which will be used as starting vector
    for the minimization process. The value 0 results in a null vector. Every other
    value x will be used to populate the initial vector with random numbers from the
    interval [-x,x]. (default=`0')
  id: initial_vector
  inputBinding:
    prefix: --initialVector
  type: string
- doc: Set the minimizing algorithm used for finding an appropriate perturbation vector.
    The default option uses a custom implementation of the gradient descent algorithms
    while all other options represent various algorithms implemented in the GNU Scientific
    Library. When the GNU Scientific Library can not be found, only the default minimizer
    is available. (possible values="conjugate_fr", "conjugate_pr", "vector_bfgs",
    "vector_bfgs2", "steepest_descent", "default" default=`default')
  id: minimizer
  inputBinding:
    prefix: --minimizer
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: Do not allow GU pairs (default=off)
  id: no_gu
  inputBinding:
    prefix: --noGU
  type: boolean
- doc: Do not allow GU pairs at the end of helices (default=off)
  id: no_closing_gu
  inputBinding:
    prefix: --noClosingGU
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: Set the maximum base pair span (default=`-1')
  id: max_bp_span
  inputBinding:
    prefix: --maxBPspan
  type: long
