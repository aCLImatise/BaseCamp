class: CommandLineTool
id: RNApvmin.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_shape_conversion
  doc: "+ [optional parameters]\nSpecify the method used to convert SHAPE\nreactivities\
    \ to pairing probabilities.\n(default=`O')"
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: in_tau_sigma_ratio
  doc: "Ratio of the weighting factors tau and sigma.\n(default=`1.0')"
  type: double
  inputBinding:
    prefix: --tauSigmaRatio
- id: in_objective_function
  doc: "The energies of the perturbation vector and the\ndiscripancies between predicted\
    \ and observed\npairing probabilities contribute to the\nobjective function. This\
    \ parameter defines,\nwhich function is used to process the\ncontributions before\
    \ summing them up.\n0 square\n1 absolute\n(default=`0')"
  type: long
  inputBinding:
    prefix: --objectiveFunction
- id: in_sample_size
  doc: "The iterative minimization process requires to\nevaluate the gradient of the\
    \ objective\nfunction. A sample size of 0 leads to an\nanalytical evaluation which\
    \ scales as O(N^4).\nChoosing a sample size >0 estimates the\ngradient by sampling\
    \ the given number of\nsequences from the ensemble, which is much\nfaster.\n(default=`1000')"
  type: long
  inputBinding:
    prefix: --sampleSize
- id: in_nonredundant
  doc: "Enable non-redundant sampling strategy.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --nonRedundant
- id: in_intermediate_path
  doc: "Write an output file for each iteration of the\nminimization process. Each\
    \ file contains the\nused perturbation vector and the score of the\nobjective\
    \ function. The number of the\niteration will be appended to the given path."
  type: long
  inputBinding:
    prefix: --intermediatePath
- id: in_initial_vector
  doc: "Defines the initial perturbation vector which\nwill be used as starting vector\
    \ for the\nminimization process. The value 0 results in\na null vector. Every\
    \ other value x will be\nused to populate the initial vector with\nrandom numbers\
    \ from the interval [-x,x].\n(default=`0')"
  type: long
  inputBinding:
    prefix: --initialVector
- id: in_minimizer
  doc: "Set the minimizing algorithm used for finding\nan appropriate perturbation\
    \ vector. The\ndefault option uses a custom implementation\nof the gradient descent\
    \ algorithms while all\nother options represent various algorithms\nimplemented\
    \ in the GNU Scientific Library.\nWhen the GNU Scientific Library can not be\n\
    found, only the default minimizer is\navailable.\n(possible values=\"conjugate_fr\"\
    ,\n\"conjugate_pr\", \"vector_bfgs\",\n\"vector_bfgs2\", \"steepest_descent\"\
    ,\n\"default\" default=`default')"
  type: long
  inputBinding:
    prefix: --minimizer
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_max_bp_span
  doc: "Set the maximum base pair span\n(default=`-1')"
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: in_program
  doc: "-j, --numThreads=INT          Set the number of threads used for calculations\n\
    (only available when compiled with OpenMP\nsupport)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNApvmin
