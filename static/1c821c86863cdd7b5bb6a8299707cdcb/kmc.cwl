class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kmc.cwl
inputs:
- id: verbose_mode_shows
  doc: '- verbose mode (shows all parameter settings); default: false'
  type: boolean
  inputBinding:
    prefix: -v
- id: len_kmer_length
  doc: '<len> - k-mer length (k from 1 to 256; default: 25)'
  type: boolean
  inputBinding:
    prefix: -k
- id: size_max_amount
  doc: '<size> - max amount of RAM in GB (from 1 to 1024); default: 12'
  type: boolean
  inputBinding:
    prefix: -m
- id: sm
  doc: '- use strict memory mode (memory limit from -m<n> switch will not be exceeded)'
  type: boolean
  inputBinding:
    prefix: -sm
- id: par_signature_length
  doc: '<par> - signature length (5, 6, 7, 8, 9, 10, 11); default: 9'
  type: boolean
  inputBinding:
    prefix: -p
- id: aqmbam_input_fasta
  doc: '<a/q/m/bam> - input in FASTA format (-fa), FASTQ format (-fq), multi FASTA
    (-fm) or BAM (-fbam); default: FASTQ'
  type: boolean
  inputBinding:
    prefix: -f
- id: ci
  doc: '<value> - exclude k-mers occurring less than <value> times (default: 2)'
  type: boolean
  inputBinding:
    prefix: -ci
- id: cs
  doc: '<value> - maximal value of a counter (default: 255)'
  type: boolean
  inputBinding:
    prefix: -cs
- id: cx
  doc: '<value> - exclude k-mers occurring more of than <value> times (default: 1e9)'
  type: boolean
  inputBinding:
    prefix: -cx
- id: turn_transformation_kmers
  doc: '- turn off transformation of k-mers into canonical form'
  type: boolean
  inputBinding:
    prefix: -b
- id: turn_ramonly_mode
  doc: '- turn on RAM-only mode '
  type: boolean
  inputBinding:
    prefix: -r
- id: value_number_bins
  doc: '<value> - number of bins '
  type: boolean
  inputBinding:
    prefix: -n
- id: value_total_number
  doc: '<value> - total number of threads (default: no. of CPU cores)'
  type: boolean
  inputBinding:
    prefix: -t
- id: sf
  doc: <value> - number of FASTQ reading threads
  type: boolean
  inputBinding:
    prefix: -sf
- id: sp
  doc: <value> - number of splitting threads
  type: boolean
  inputBinding:
    prefix: -sp
- id: sr
  doc: <value> - number of threads for 2nd stage
  type: boolean
  inputBinding:
    prefix: -sr
- id: filename_file_name
  doc: <file_name> - file name with execution summary in JSON format
  type: boolean
  inputBinding:
    prefix: -j
- id: _without_output
  doc: '- without output'
  type: boolean
  inputBinding:
    prefix: -w
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: working_directory
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- kmc
