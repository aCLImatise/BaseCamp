class: CommandLineTool
id: VelvetOptimiser.pl.cwl
inputs:
- id: in_verbose_verbose_logging
  doc: "|verbose+    Verbose logging, includes all velvet output in the logfile. (default\
    \ '0')."
  type: boolean
  inputBinding:
    prefix: --v
- id: in_hashsi_starting_lower
  doc: "|hashs=i     The starting (lower) hash value (default '19')."
  type: boolean
  inputBinding:
    prefix: --s
- id: in_hashei_end_higher
  doc: "|hashe=i     The end (higher) hash value (default '191')."
  type: boolean
  inputBinding:
    prefix: --e
- id: in_stepi_step_hash
  doc: "|step=i      The step in hash search..  min 2, no odd numbers (default '2')."
  type: boolean
  inputBinding:
    prefix: --x
- id: in_velvethfiless_file_section
  doc: "|velvethfiles=s The file section of the velveth command line. (default '0')."
  type: boolean
  inputBinding:
    prefix: --f
- id: in_amosfile_turn_velvet
  doc: "|amosfile!   Turn on velvet's read tracking and amos file output. (default\
    \ '0')."
  type: File
  inputBinding:
    prefix: --a
- id: in_velvetgoptionss_extra_options
  doc: "|velvetgoptions=s Extra velvetg options to pass through.  eg. -long_mult_cutoff\
    \ -max_coverage etc (default '')."
  type: boolean
  inputBinding:
    prefix: --o
- id: in_threadsi_maximum_number
  doc: "|threads=i   The maximum number of simulataneous velvet instances to run.\
    \ (default '8')."
  type: boolean
  inputBinding:
    prefix: --t
- id: in_genomesizef_approximate_size
  doc: "|genomesize=f The approximate size of the genome to be assembled in megabases.\n\
    Only used in memory use estimation. If not specified, memory use estimation\n\
    will not occur. If memory use is estimated, the results are shown and then program\
    \ exits. (default '0')."
  type: boolean
  inputBinding:
    prefix: --g
- id: in_optfunckmers_optimisation_function
  doc: "|optFuncKmer=s The optimisation function used for k-mer choice. (default 'n50')."
  type: boolean
  inputBinding:
    prefix: --k
- id: in_optimisation_function_used
  doc: "|optFuncCov=s The optimisation function used for cov_cutoff optimisation.\
    \ (default 'Lbp')."
  type: boolean
  inputBinding:
    prefix: --c
- id: in_mincovcutofff_minimum_covcutoff
  doc: "|minCovCutoff=f The minimum cov_cutoff to be used. (default '0')."
  type: boolean
  inputBinding:
    prefix: --m
- id: in_prefixs_prefix_output
  doc: "|prefix=s    The prefix for the output filenames, the default is the date\
    \ and time in the format DD-MM-YYYY-HH-MM_. (default 'auto')."
  type: boolean
  inputBinding:
    prefix: --p
- id: in_name_put_output
  doc: "|dir_final=s The name of the directory to put the final output into. (default\
    \ '.')."
  type: Directory
  inputBinding:
    prefix: --d
- id: in_uppercovcutofff_maximum_cutoff
  doc: "|upperCovCutoff=f The maximum coverage cutoff to consider as a multiplier\
    \ of the expected coverage. (default '0.8')."
  type: boolean
  inputBinding:
    prefix: --z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_amosfile_turn_velvet
  doc: "|amosfile!   Turn on velvet's read tracking and amos file output. (default\
    \ '0')."
  type: File
  outputBinding:
    glob: $(inputs.in_amosfile_turn_velvet)
- id: out_name_put_output
  doc: "|dir_final=s The name of the directory to put the final output into. (default\
    \ '.')."
  type: Directory
  outputBinding:
    glob: $(inputs.in_name_put_output)
cwlVersion: v1.1
baseCommand:
- VelvetOptimiser.pl
