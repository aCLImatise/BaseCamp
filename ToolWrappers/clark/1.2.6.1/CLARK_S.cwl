class: CommandLineTool
id: CLARK_S.cwl
inputs:
- id: in_kmer_length_integer
  doc: ',           k-mer length:  integer, >= 2 and <= 32 (for CLARK only). The default
    value is 31.'
  type: long
  inputBinding:
    prefix: -k
- id: in_minimum_kmer_frequency_targets
  doc: ',      minimum of k-mer frequency in targets (for CLARK only):        integer,
    >=0.'
  type: long
  inputBinding:
    prefix: -t
- id: in_minimum_kmer_frequency_objects
  doc: ',     minimum of k-mer frequency in objects  (for CLARK only):       integer,
    >=0.'
  type: long
  inputBinding:
    prefix: -o
- id: in_filename_targets_definition
  doc: ',        filename of the targets definition:     text.'
  type: File
  inputBinding:
    prefix: -T
- id: in_directory_name_loadsave
  doc: ',       directory name for the database (to load/save database files):  text.'
  type: Directory
  inputBinding:
    prefix: -D
- id: in_filename_objects_list
  doc: ',        filename of objects (or list of objects):       text.'
  type: File
  inputBinding:
    prefix: -O
- id: in_file_filenames_pairedend
  doc: '<file2>,      filenames of paired-end reads:  texts.'
  type: File
  inputBinding:
    prefix: -P
- id: in_filename_store_results
  doc: ',        filename to store results (or corresponding list of results file):      text.'
  type: File
  inputBinding:
    prefix: -R
- id: in_mode_execution_full
  doc: ",               mode of execution: 0 (full), 1 (default), 2 (express) and\
    \ 3 (spectrum).\nFor CLARK-S, the full and default mode are the same."
  type: long
  inputBinding:
    prefix: -m
- id: in_number_threads_integer
  doc: ',    number of threads:     integer >= 1.'
  type: long
  inputBinding:
    prefix: -n
- id: in_long
  doc: ",                  to indicate that the objects files contains very long/large\
    \ sequences (e.g.,\nlong contigs from genome assembly, long sequencing reads from\
    \ Nanopore or Pacbio, etc.)\nand allocate more memory accordingly. This option\
    \ is only for running the full mode or\nrunning CLARK-S, in the case of sequences\
    \ up to 50 Mbp."
  type: boolean
  inputBinding:
    prefix: --long
- id: in_tsk
  doc: ',                   to request a detailed creation of the database (target
    specific k-mers files). This option is no more supported.'
  type: boolean
  inputBinding:
    prefix: --tsk
- id: in_ldm
  doc: ',                   to request the loading of the database by memory mapped-file
    (in multithreaded mode, multiple parallel threads are requested).'
  type: boolean
  inputBinding:
    prefix: --ldm
- id: in_k_so
  doc: ',                   to request a preliminary k-spectrum analysis of each object
    (for mode 3 only).'
  type: boolean
  inputBinding:
    prefix: --kso
- id: in_extended
  doc: ',              to request an extended output of the full mode (for CLARK only).'
  type: boolean
  inputBinding:
    prefix: --extended
- id: in_gap_number_pass
  doc: ',          gap or number of non-overlapping k-mers to pass for the database
    creation (for CLARK-l only). The default value is 4.'
  type: long
  inputBinding:
    prefix: -g
- id: in_sampling_factor_value
  doc: ',             sampling factor value in the default mode (for CLARK/CLARK-S
    only).'
  type: string
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CLARK-S
