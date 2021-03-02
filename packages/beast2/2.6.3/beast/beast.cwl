class: CommandLineTool
id: beast.cwl
inputs:
- id: in_window
  doc: a console window
  type: string?
  inputBinding:
    prefix: -window
- id: in_options
  doc: an options dialog
  type: string?
  inputBinding:
    prefix: -options
- id: in_working
  doc: working directory to input file's directory
  type: File?
  inputBinding:
    prefix: -working
- id: in_seed
  doc: a random number generator seed
  type: long?
  inputBinding:
    prefix: -seed
- id: in_prefix
  doc: a prefix for all output log filenames
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_state_file
  doc: the filename for storing/restoring the state
  type: File?
  inputBinding:
    prefix: -statefile
- id: in_overwrite
  doc: overwriting of log files
  type: string?
  inputBinding:
    prefix: -overwrite
- id: in_resume
  doc: appending of log files
  type: string?
  inputBinding:
    prefix: -resume
- id: in_validate
  doc: the XML, but do not run -- useful for debugging XML
  type: string?
  inputBinding:
    prefix: -validate
- id: in_errors
  doc: maximum number of numerical errors before stopping
  type: long?
  inputBinding:
    prefix: -errors
- id: in_threads
  doc: number of computational threads to use (default 1), -1 for number of cores
  type: long?
  inputBinding:
    prefix: -threads
- id: in_java
  doc: Java only, no native implementations
  type: string?
  inputBinding:
    prefix: -java
- id: in_noerr
  doc: all output to standard error
  type: string?
  inputBinding:
    prefix: -noerr
- id: in_loglevel
  doc: ',warning,info,debug,trace'
  type: string?
  inputBinding:
    prefix: -loglevel
- id: in_instances
  doc: site patterns amongst number of threads (use with -threads option)
  type: long?
  inputBinding:
    prefix: -instances
- id: in_beagle
  doc: beagle library if available
  type: string?
  inputBinding:
    prefix: -beagle
- id: in_beagle_info
  doc: ': show information on available resources'
  type: string?
  inputBinding:
    prefix: -beagle_info
- id: in_beagle_order
  doc: ': set order of resource use'
  type: string?
  inputBinding:
    prefix: -beagle_order
- id: in_beagle_cpu
  doc: ': use CPU instance'
  type: string?
  inputBinding:
    prefix: -beagle_CPU
- id: in_beagle_gpu
  doc: ': use GPU instance if available'
  type: string?
  inputBinding:
    prefix: -beagle_GPU
- id: in_beagle_sse
  doc: ': use SSE extensions if available'
  type: string?
  inputBinding:
    prefix: -beagle_SSE
- id: in_beagle_single
  doc: ': use single precision if available'
  type: string?
  inputBinding:
    prefix: -beagle_single
- id: in_beagle_double
  doc: ': use double precision if available'
  type: string?
  inputBinding:
    prefix: -beagle_double
- id: in_beagle_scaling
  doc: ': specify scaling scheme to use'
  type: string?
  inputBinding:
    prefix: -beagle_scaling
- id: in_version
  doc: version and stop
  type: string?
  inputBinding:
    prefix: -version
- id: in_strict_versions
  doc: only package versions as specified in the 'required' attribute
  type: string?
  inputBinding:
    prefix: -strictversions
- id: in_pairs_replaced_xml
  doc: pairs to be replaced in the XML, e.g., -D "arg1=10,arg2=20"
  type: long?
  inputBinding:
    prefix: -D
- id: in_df
  doc: ', but attribute-value pairs defined in file in JSON format'
  type: File?
  inputBinding:
    prefix: -DF
- id: in_df_out
  doc: XML file written when -DF option is used
  type: File?
  inputBinding:
    prefix: -DFout
- id: in_sample_from_prior
  doc: from prior for MCMC analysis (by adding sampleFromPrior="true" in the first
    run element)
  type: string?
  inputBinding:
    prefix: -sampleFromPrior
- id: in_input_file_name
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0
cwlVersion: v1.1
baseCommand:
- beast
