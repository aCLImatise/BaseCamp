class: CommandLineTool
id: beast.cwl
inputs:
- id: in_verbose
  doc: verbose XML parsing messages
  type: string?
  inputBinding:
    prefix: -verbose
- id: in_warnings
  doc: warning messages about BEAST XML file
  type: File?
  inputBinding:
    prefix: -warnings
- id: in_strict
  doc: on non-conforming BEAST XML file
  type: File?
  inputBinding:
    prefix: -strict
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
- id: in_overwrite
  doc: overwriting of log files
  type: string?
  inputBinding:
    prefix: -overwrite
- id: in_errors
  doc: maximum number of numerical errors before stopping
  type: long?
  inputBinding:
    prefix: -errors
- id: in_threads
  doc: number of computational threads to use (default auto)
  type: long?
  inputBinding:
    prefix: -threads
- id: in_java
  doc: Java only, no native implementations
  type: string?
  inputBinding:
    prefix: -java
- id: in_tests
  doc: number of full evaluation tests to perform (default 1000)
  type: long?
  inputBinding:
    prefix: -tests
- id: in_threshold
  doc: evaluation test threshold (default 0.1)
  type: double?
  inputBinding:
    prefix: -threshold
- id: in_adaptation_off
  doc: "'t adapt operator sizes"
  type: string?
  inputBinding:
    prefix: -adaptation_off
- id: in_adaptation_target
  doc: acceptance rate for adaptive operators (default 0.234)
  type: double?
  inputBinding:
    prefix: -adaptation_target
- id: in_beagle
  doc: BEAGLE library if available (default on)
  type: string?
  inputBinding:
    prefix: -beagle
- id: in_beagle_auto
  doc: ': automatically select fastest resource for analysis'
  type: string?
  inputBinding:
    prefix: -beagle_auto
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
- id: in_beagle_instances
  doc: ': divide site patterns amongst instances'
  type: string?
  inputBinding:
    prefix: -beagle_instances
- id: in_beagle_multi_partition
  doc: ': use multipartition extensions if available (default auto)'
  type: string?
  inputBinding:
    prefix: -beagle_multipartition
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
- id: in_beagle_sse_off
  doc: ': turn off use of SSE extensions'
  type: string?
  inputBinding:
    prefix: -beagle_SSE_off
- id: in_beagle_threading_off
  doc: ': turn off auto threading for a CPU instance'
  type: string?
  inputBinding:
    prefix: -beagle_threading_off
- id: in_beagle_thread_count
  doc: ': manually set number of threads for a CPU instance'
  type: long?
  inputBinding:
    prefix: -beagle_thread_count
- id: in_beagle_cuda
  doc: ': use CUDA parallization if available'
  type: string?
  inputBinding:
    prefix: -beagle_cuda
- id: in_beagle_open_cl
  doc: ': use OpenCL parallization if available'
  type: string?
  inputBinding:
    prefix: -beagle_opencl
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
- id: in_beagle_async
  doc: ': use asynchronous kernels if available'
  type: string?
  inputBinding:
    prefix: -beagle_async
- id: in_beagle_scaling
  doc: ': specify scaling scheme to use'
  type: string?
  inputBinding:
    prefix: -beagle_scaling
- id: in_beagle_delay_scaling_off
  doc: ": don't wait until underflow for scaling option"
  type: string?
  inputBinding:
    prefix: -beagle_delay_scaling_off
- id: in_beagle_rescale
  doc: ': frequency of rescaling (dynamic scaling only)'
  type: string?
  inputBinding:
    prefix: -beagle_rescale
- id: in_mpi
  doc: MPI rank to label output
  type: string?
  inputBinding:
    prefix: -mpi
- id: in_particles
  doc: a folder of particle start states
  type: Directory?
  inputBinding:
    prefix: -particles
- id: in_mc_three_chains
  doc: of chains
  type: long?
  inputBinding:
    prefix: -mc3_chains
- id: in_mc_three_delta
  doc: increment parameter
  type: long?
  inputBinding:
    prefix: -mc3_delta
- id: in_mc_three_temperatures
  doc: comma-separated list of the hot chain temperatures
  type: long?
  inputBinding:
    prefix: -mc3_temperatures
- id: in_mc_three_swap
  doc: at which chains temperatures will be swapped
  type: long?
  inputBinding:
    prefix: -mc3_swap
- id: in_load_state
  doc: a filename to load a saved state from
  type: File?
  inputBinding:
    prefix: -load_state
- id: in_save_stem
  doc: a stem for the filenames to save states to
  type: string?
  inputBinding:
    prefix: -save_stem
- id: in_save_at
  doc: a state at which to save a state file
  type: File?
  inputBinding:
    prefix: -save_at
- id: in_save_every
  doc: a frequency to save the state file
  type: File?
  inputBinding:
    prefix: -save_every
- id: in_save_state
  doc: a filename to save state to
  type: File?
  inputBinding:
    prefix: -save_state
- id: in_force_resume
  doc: resuming from a saved state
  type: string?
  inputBinding:
    prefix: -force_resume
- id: in_citations_file
  doc: a filename to write a citation list to
  type: File?
  inputBinding:
    prefix: -citations_file
- id: in_version
  doc: the version and credits and stop
  type: string?
  inputBinding:
    prefix: -version
- id: in_input_file_name
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- beast
