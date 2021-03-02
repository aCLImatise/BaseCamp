class: CommandLineTool
id: kmc.cwl
inputs:
- id: in_verbose_mode_shows
  doc: '- verbose mode (shows all parameter settings); default: false'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_len_kmer_length
  doc: '<len> - k-mer length (k from 1 to 256; default: 25)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_size_max_amount
  doc: '<size> - max amount of RAM in GB (from 1 to 1024); default: 12'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_sm
  doc: '- use strict memory mode (memory limit from -m<n> switch will not be exceeded)'
  type: boolean?
  inputBinding:
    prefix: -sm
- id: in_aqmbam_input_fasta
  doc: '<a/q/m/bam> - input in FASTA format (-fa), FASTQ format (-fq), multi FASTA
    (-fm) or BAM (-fbam); default: FASTQ'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_ci
  doc: '<value> - exclude k-mers occurring less than <value> times (default: 2)'
  type: boolean?
  inputBinding:
    prefix: -ci
- id: in_cs
  doc: '<value> - maximal value of a counter (default: 255)'
  type: boolean?
  inputBinding:
    prefix: -cs
- id: in_cx
  doc: '<value> - exclude k-mers occurring more of than <value> times (default: 1e9)'
  type: boolean?
  inputBinding:
    prefix: -cx
- id: in_turn_transformation_kmers
  doc: '- turn off transformation of k-mers into canonical form'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_turn_ramonly_mode
  doc: '- turn on RAM-only mode'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_value_number_bins
  doc: <value> - number of bins
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_value_total_number
  doc: '<value> - total number of threads (default: no. of CPU cores)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_sf
  doc: <value> - number of FASTQ reading threads
  type: boolean?
  inputBinding:
    prefix: -sf
- id: in_sp
  doc: <value> - number of splitting threads
  type: boolean?
  inputBinding:
    prefix: -sp
- id: in_sr
  doc: <value> - number of threads for 2nd stage
  type: boolean?
  inputBinding:
    prefix: -sr
- id: in_filename_file_name
  doc: <file_name> - file name with execution summary in JSON format
  type: boolean?
  inputBinding:
    prefix: -j
- id: in__without_output
  doc: '- without output'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_at_input_file_names
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kmc
