class: CommandLineTool
id: illuminapairedend.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_reverse_reads
  doc: Filename containing reverse solexa reads
  type: File?
  inputBinding:
    prefix: --reverse-reads
- id: in_index_file
  doc: Filename containing illumina index reads
  type: File?
  inputBinding:
    prefix: --index-file
- id: in_sanger
  doc: "input file is in sanger fastq nucleic format (standard\nfastq)"
  type: boolean?
  inputBinding:
    prefix: --sanger
- id: in_solexa
  doc: "input file is in fastq nucleic format produced by\nsolexa sequencer"
  type: boolean?
  inputBinding:
    prefix: --solexa
- id: in_illumina
  doc: "input file is in fastq nucleic format produced by old\nsolexa sequencer"
  type: boolean?
  inputBinding:
    prefix: --illumina
- id: in_score_min
  doc: =#.###     minimum score for keeping aligment
  type: boolean?
  inputBinding:
    prefix: --score-min
- id: in_fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean?
  inputBinding:
    prefix: --fasta-output
- id: in_fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean?
  inputBinding:
    prefix: --fastq-output
- id: in_eco_pcr_db_output
  doc: "Output sequences in ecopcr database format (sequence\nrecords are not printed\
    \ on standard output)"
  type: string?
  inputBinding:
    prefix: --ecopcrdb-output
- id: in_uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean?
  inputBinding:
    prefix: --uppercase
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- illuminapairedend
