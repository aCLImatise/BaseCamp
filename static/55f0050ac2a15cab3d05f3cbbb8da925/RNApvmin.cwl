class: CommandLineTool
id: RNApvmin.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_tau_sigma_ratio
  doc: "Ratio of the weighting factors tau and sigma.\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --tauSigmaRatio
- id: in_objective_function
  doc: "The energies of the perturbation vector and the\ndiscripancies between predicted\
    \ and observed\npairing probabilities contribute to the\nobjective function. This\
    \ parameter defines,\nwhich function is used to process the\ncontributions before\
    \ summing them up.\n0 square\n1 absolute.  (default=`0')"
  type: long?
  inputBinding:
    prefix: --objectiveFunction
- id: in_sample_size
  doc: "The iterative minimization process requires to\nevaluate the gradient of the\
    \ objective\nfunction.  (default=`1000')"
  type: long?
  inputBinding:
    prefix: --sampleSize
- id: in_nonredundant
  doc: "Enable non-redundant sampling strategy.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --nonRedundant
- id: in_intermediate_path
  doc: "Write an output file for each iteration of the\nminimization process."
  type: File?
  inputBinding:
    prefix: --intermediatePath
- id: in_initial_vector
  doc: "Specify the vector of initial pertubations.\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --initialVector
- id: in_minimizer
  doc: "Set the minimizing algorithm used for finding\nan appropriate perturbation\
    \ vector.\n(possible values=\"conjugate_fr\",\n\"conjugate_pr\", \"vector_bfgs\"\
    ,\n\"vector_bfgs2\", \"steepest_descent\",\n\"default\" default=`default')"
  type: long?
  inputBinding:
    prefix: --minimizer
- id: in_temp
  doc: "Rescale energy parameters to a temperature in\ndegrees centigrade.  (default=`37.0')"
  type: double?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "Specify \"dangling end\" model for bases\nadjacent to helices in free ends\
    \ and\nmulti-loops.  (default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: Do not allow GU pairs.  (default=off)
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_max_bp_span
  doc: Set the maximum base pair span.  (default=`-1')
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_program
  doc: -j, --numThreads=INT          Set the number of threads used for
  type: string
  inputBinding:
    position: 0
- id: in_calculations_dot
  doc: --shapeConversion=STRING  Specify the method used to convert SHAPE
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_intermediate_path
  doc: "Write an output file for each iteration of the\nminimization process."
  type: File?
  outputBinding:
    glob: $(inputs.in_intermediate_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNApvmin
