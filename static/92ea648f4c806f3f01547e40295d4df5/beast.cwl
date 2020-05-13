class: CommandLineTool
id: beast.cwl
inputs:
- id: window
  doc: a console window
  type: string
  inputBinding:
    prefix: -window
- id: options
  doc: an options dialog
  type: string
  inputBinding:
    prefix: -options
- id: working
  doc: working directory to input file's directory
  type: string
  inputBinding:
    prefix: -working
- id: seed
  doc: a random number generator seed
  type: string
  inputBinding:
    prefix: -seed
- id: prefix
  doc: a prefix for all output log filenames
  type: string
  inputBinding:
    prefix: -prefix
- id: state_file
  doc: the filename for storing/restoring the state
  type: string
  inputBinding:
    prefix: -statefile
- id: overwrite
  doc: overwriting of log files
  type: string
  inputBinding:
    prefix: -overwrite
- id: resume
  doc: appending of log files
  type: string
  inputBinding:
    prefix: -resume
- id: validate
  doc: the XML, but do not run -- useful for debugging XML
  type: string
  inputBinding:
    prefix: -validate
- id: errors
  doc: maximum number of numerical errors before stopping
  type: string
  inputBinding:
    prefix: -errors
- id: threads
  doc: number of computational threads to use (default 1), -1 for number of cores
  type: string
  inputBinding:
    prefix: -threads
- id: java
  doc: Java only, no native implementations
  type: string
  inputBinding:
    prefix: -java
- id: noerr
  doc: all output to standard error
  type: string
  inputBinding:
    prefix: -noerr
- id: loglevel
  doc: ',warning,info,debug,trace'
  type: string
  inputBinding:
    prefix: -loglevel
- id: instances
  doc: site patterns amongst number of threads (use with -threads option)
  type: string
  inputBinding:
    prefix: -instances
- id: beagle
  doc: beagle library if available
  type: string
  inputBinding:
    prefix: -beagle
- id: beagle_info
  doc: ': show information on available resources'
  type: string
  inputBinding:
    prefix: -beagle_info
- id: beagle_order
  doc: ': set order of resource use'
  type: string
  inputBinding:
    prefix: -beagle_order
- id: beagle_cpu
  doc: ': use CPU instance'
  type: string
  inputBinding:
    prefix: -beagle_CPU
- id: beagle_gpu
  doc: ': use GPU instance if available'
  type: string
  inputBinding:
    prefix: -beagle_GPU
- id: beagle_sse
  doc: ': use SSE extensions if available'
  type: string
  inputBinding:
    prefix: -beagle_SSE
- id: beagle_single
  doc: ': use single precision if available'
  type: string
  inputBinding:
    prefix: -beagle_single
- id: beagle_double
  doc: ': use double precision if available'
  type: string
  inputBinding:
    prefix: -beagle_double
- id: beagle_scaling
  doc: ': specify scaling scheme to use'
  type: string
  inputBinding:
    prefix: -beagle_scaling
- id: version
  doc: version and stop
  type: string
  inputBinding:
    prefix: -version
- id: strict_versions
  doc: only package versions as specified in the 'required' attribute
  type: string
  inputBinding:
    prefix: -strictversions
- id: d
  doc: pairs to be replaced in the XML, e.g., -D "arg1=10,arg2=20"
  type: string
  inputBinding:
    prefix: -D
- id: sample_from_prior
  doc: from prior for MCMC analysis (by adding sampleFromPrior="true" in the first
    run element)
  type: string
  inputBinding:
    prefix: -sampleFromPrior
outputs: []
cwlVersion: v1.1
baseCommand:
- beast
