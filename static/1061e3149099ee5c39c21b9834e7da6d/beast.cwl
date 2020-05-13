class: CommandLineTool
id: beast.cwl
inputs:
- id: verbose
  doc: verbose XML parsing messages
  type: string
  inputBinding:
    prefix: -verbose
- id: warnings
  doc: warning messages about BEAST XML file
  type: string
  inputBinding:
    prefix: -warnings
- id: strict
  doc: on non-conforming BEAST XML file
  type: string
  inputBinding:
    prefix: -strict
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
- id: overwrite
  doc: overwriting of log files
  type: string
  inputBinding:
    prefix: -overwrite
- id: errors
  doc: maximum number of numerical errors before stopping
  type: string
  inputBinding:
    prefix: -errors
- id: threads
  doc: number of computational threads to use (default auto)
  type: string
  inputBinding:
    prefix: -threads
- id: java
  doc: Java only, no native implementations
  type: string
  inputBinding:
    prefix: -java
- id: tests
  doc: number of full evaluation tests to perform (default 1000)
  type: string
  inputBinding:
    prefix: -tests
- id: threshold
  doc: evaluation test threshold (default 0.1)
  type: string
  inputBinding:
    prefix: -threshold
- id: adaptation_off
  doc: "'t adapt operator sizes"
  type: string
  inputBinding:
    prefix: -adaptation_off
- id: adaptation_target
  doc: acceptance rate for adaptive operators (default 0.234)
  type: string
  inputBinding:
    prefix: -adaptation_target
- id: beagle
  doc: BEAGLE library if available (default on)
  type: string
  inputBinding:
    prefix: -beagle
- id: beagle_auto
  doc: ': automatically select fastest resource for analysis'
  type: string
  inputBinding:
    prefix: -beagle_auto
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
- id: beagle_instances
  doc: ': divide site patterns amongst instances'
  type: string
  inputBinding:
    prefix: -beagle_instances
- id: beagle_multi_partition
  doc: ': use multipartition extensions if available (default auto)'
  type: string
  inputBinding:
    prefix: -beagle_multipartition
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
- id: beagle_sse_off
  doc: ': turn off use of SSE extensions'
  type: string
  inputBinding:
    prefix: -beagle_SSE_off
- id: beagle_threading_off
  doc: ': turn off auto threading for a CPU instance'
  type: string
  inputBinding:
    prefix: -beagle_threading_off
- id: beagle_thread_count
  doc: ': manually set number of threads for a CPU instance'
  type: string
  inputBinding:
    prefix: -beagle_thread_count
- id: beagle_cuda
  doc: ': use CUDA parallization if available'
  type: string
  inputBinding:
    prefix: -beagle_cuda
- id: beagle_open_cl
  doc: ': use OpenCL parallization if available'
  type: string
  inputBinding:
    prefix: -beagle_opencl
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
- id: beagle_async
  doc: ': use asynchronous kernels if available'
  type: string
  inputBinding:
    prefix: -beagle_async
- id: beagle_scaling
  doc: ': specify scaling scheme to use'
  type: string
  inputBinding:
    prefix: -beagle_scaling
- id: beagle_delay_scaling_off
  doc: ": don't wait until underflow for scaling option"
  type: string
  inputBinding:
    prefix: -beagle_delay_scaling_off
- id: beagle_rescale
  doc: ': frequency of rescaling (dynamic scaling only)'
  type: string
  inputBinding:
    prefix: -beagle_rescale
- id: mpi
  doc: MPI rank to label output
  type: string
  inputBinding:
    prefix: -mpi
- id: particles
  doc: a folder of particle start states
  type: string
  inputBinding:
    prefix: -particles
- id: mc3_chains
  doc: of chains
  type: string
  inputBinding:
    prefix: -mc3_chains
- id: mc3_delta
  doc: increment parameter
  type: string
  inputBinding:
    prefix: -mc3_delta
- id: mc3_temperatures
  doc: comma-separated list of the hot chain temperatures
  type: string
  inputBinding:
    prefix: -mc3_temperatures
- id: mc3_swap
  doc: at which chains temperatures will be swapped
  type: string
  inputBinding:
    prefix: -mc3_swap
- id: load_state
  doc: a filename to load a saved state from
  type: string
  inputBinding:
    prefix: -load_state
- id: save_stem
  doc: a stem for the filenames to save states to
  type: string
  inputBinding:
    prefix: -save_stem
- id: save_at
  doc: a state at which to save a state file
  type: string
  inputBinding:
    prefix: -save_at
- id: save_every
  doc: a frequency to save the state file
  type: string
  inputBinding:
    prefix: -save_every
- id: save_state
  doc: a filename to save state to
  type: string
  inputBinding:
    prefix: -save_state
- id: force_resume
  doc: resuming from a saved state
  type: string
  inputBinding:
    prefix: -force_resume
- id: citations_file
  doc: a filename to write a citation list to
  type: string
  inputBinding:
    prefix: -citations_file
- id: version
  doc: the version and credits and stop
  type: string
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- beast
