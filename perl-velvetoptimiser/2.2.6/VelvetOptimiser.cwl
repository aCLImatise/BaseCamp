class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/VelvetOptimiser.pl.cwl
inputs:
- id: verbose_verbose_logging
  doc: "|verbose+    Verbose logging, includes all velvet output in the logfile. (default\
    \ '0')."
  type: boolean
  inputBinding:
    prefix: --v
- id: hashsi_starting_default
  doc: "|hashs=i     The starting (lower) hash value (default '19')."
  type: boolean
  inputBinding:
    prefix: --s
- id: hashei_end_higher
  doc: "|hashe=i     The end (higher) hash value (default '191')."
  type: boolean
  inputBinding:
    prefix: --e
- id: stepi_step_hash
  doc: "|step=i      The step in hash search..  min 2, no odd numbers (default '2')."
  type: boolean
  inputBinding:
    prefix: --x
- id: velvethfiless_file_section
  doc: "|velvethfiles=s The file section of the velveth command line. (default '0')."
  type: boolean
  inputBinding:
    prefix: --f
- id: amosfile_turn_velvet
  doc: "|amosfile!   Turn on velvet's read tracking and amos file output. (default\
    \ '0')."
  type: boolean
  inputBinding:
    prefix: --a
- id: velvetgoptionss_extra_velvetg
  doc: "|velvetgoptions=s Extra velvetg options to pass through.  eg. -long_mult_cutoff\
    \ -max_coverage etc (default '')."
  type: boolean
  inputBinding:
    prefix: --o
- id: threadsi_maximum_number
  doc: "|threads=i   The maximum number of simulataneous velvet instances to run.\
    \ (default '8')."
  type: boolean
  inputBinding:
    prefix: --t
- id: genomesizef_approximate_size
  doc: "|genomesize=f The approximate size of the genome to be assembled in megabases.\
    \ Only used in memory use estimation. If not specified, memory use estimation\
    \ will not occur. If memory use is estimated, the results are shown and then program\
    \ exits. (default '0')."
  type: boolean
  inputBinding:
    prefix: --g
- id: optfunckmers_optimisation_function
  doc: "|optFuncKmer=s The optimisation function used for k-mer choice. (default 'n50')."
  type: boolean
  inputBinding:
    prefix: --k
- id: optfunccovs_optimisation_function
  doc: "|optFuncCov=s The optimisation function used for cov_cutoff optimisation.\
    \ (default 'Lbp')."
  type: boolean
  inputBinding:
    prefix: --c
- id: mincovcutofff_minimum_covcutoff
  doc: "|minCovCutoff=f The minimum cov_cutoff to be used. (default '0')."
  type: boolean
  inputBinding:
    prefix: --m
- id: prefixs_prefix_filenames
  doc: "|prefix=s    The prefix for the output filenames, the default is the date\
    \ and time in the format DD-MM-YYYY-HH-MM_. (default 'auto')."
  type: boolean
  inputBinding:
    prefix: --p
- id: dirfinals_name_put
  doc: "|dir_final=s The name of the directory to put the final output into. (default\
    \ '.')."
  type: boolean
  inputBinding:
    prefix: --d
- id: uppercovcutofff_maximum_cutoff
  doc: "|upperCovCutoff=f The maximum coverage cutoff to consider as a multiplier\
    \ of the expected coverage. (default '0.8')."
  type: boolean
  inputBinding:
    prefix: --z
outputs: []
cwlVersion: v1.1
baseCommand:
- VelvetOptimiser.pl
