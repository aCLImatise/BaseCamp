class: CommandLineTool
id: pispino_seqprep.cwl
inputs:
- id: in_directory_raw_sequences
  doc: '[REQUIRED] Directory with raw sequences in gzipped'
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_tap_separated_file
  doc: "Tap separated file with three columns for sample ids,\nforward-read filename\
    \ and reverse-read filename. Only\nthe files listed in this file will be processed."
  type: File?
  inputBinding:
    prefix: -l
- id: in_fast_x_q
  doc: "FASTX FASTQ_QUALITY_FILTER - Minimum quality score to\nkeep [default: 30]"
  type: long?
  inputBinding:
    prefix: --FASTX-q
- id: in_fast_x_p
  doc: "FASTX FASTQ_QUALITY_FILTER - Minimum percent of bases\nthat must have q quality\
    \ [default: 80]"
  type: long?
  inputBinding:
    prefix: --FASTX-p
- id: in_fast_x_n
  doc: "FASTX FASTQ_TO_FASTA - remove sequences with unknown\n(N) nucleotides [default:\
    \ false]"
  type: boolean?
  inputBinding:
    prefix: --FASTX-n
- id: in_base_phred_score
  doc: 'Base PHRED quality score [default: 33]'
  type: long?
  inputBinding:
    prefix: -b
- id: in_joiner_method
  doc: "Joiner method: \"PEAR\" and \"FASTQJOIN\" [default:\nVSEARCH]"
  type: string?
  inputBinding:
    prefix: --joiner_method
- id: in_pear_options
  doc: "= <STR>\nUser customisable parameter: You can add/change PEAR\nparameters.\
    \ Please use \"--PEAR_options=\" followed by\ncustom parameters wrapped around\
    \ them. E.g.\n--PEAR_options=\"-v 8 -t 2\". Note that if you put two\nsame parameters\
    \ such as \"-v 8 -v 15\", PEAR will use\nthe later."
  type: boolean?
  inputBinding:
    prefix: --PEAR_options
- id: in_retain_intermediate_files
  doc: "Retain intermediate files (Beware intermediate files\nuse excessive disk space!)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_number_of_threads
  doc: 'Number of Threads [default: 1]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_forward_reads_only
  doc: "Do NOT join paired-end sequences, but just use the\nforward reads.\n"
  type: boolean?
  inputBinding:
    prefix: --forwardreadsonly
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_fast_q
  doc: -o <DIR>              [REQUIRED] Directory to output results
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pispino_seqprep
