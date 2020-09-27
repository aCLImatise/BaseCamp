class: CommandLineTool
id: extractreads.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean
  inputBinding:
    prefix: --without-progress-bar
- id: in_window_length
  doc: size of the sliding window
  type: long
  inputBinding:
    prefix: --window-length
- id: in_step
  doc: position difference between two windows
  type: string
  inputBinding:
    prefix: --step
- id: in_circular
  doc: set for circular sequence
  type: boolean
  inputBinding:
    prefix: --circular
- id: in_reference
  doc: sequence file containing the reference sequences
  type: File
  inputBinding:
    prefix: --reference
- id: in_reverse_reads
  doc: Filename containing reverse solexa reads
  type: File
  inputBinding:
    prefix: --reverse-reads
- id: in_write_dump
  doc: Save the index to a dump file
  type: File
  inputBinding:
    prefix: --write-dump
- id: in_read_dump
  doc: Read the index from a dump file
  type: File
  inputBinding:
    prefix: --read-dump
- id: in_singleton
  doc: Write singleton sequence in this file
  type: File
  inputBinding:
    prefix: --singleton
- id: in_skip
  doc: skip the N first sequences
  type: string
  inputBinding:
    prefix: --skip
- id: in_only
  doc: treat only N sequences
  type: string
  inputBinding:
    prefix: --only
- id: in_genbank
  doc: Input file is in genbank format
  type: boolean
  inputBinding:
    prefix: --genbank
- id: in_embl
  doc: Input file is in embl format
  type: boolean
  inputBinding:
    prefix: --embl
- id: in_skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean
  inputBinding:
    prefix: --skip-on-error
- id: in_fast_a
  doc: "Input file is in fasta nucleic format (including\nobitools fasta extentions)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_eco_pcr
  doc: Input file is in ecopcr format
  type: boolean
  inputBinding:
    prefix: --ecopcr
- id: in_raw_fast_a
  doc: "Input file is in fasta format (but more tolerant to\nformat variant)"
  type: boolean
  inputBinding:
    prefix: --raw-fasta
- id: in_sanger
  doc: "Input file is in sanger fastq nucleic format (standard\nfastq)"
  type: boolean
  inputBinding:
    prefix: --sanger
- id: in_solexa
  doc: "Input file is in fastq nucleic format produced by\nsolexa sequencer"
  type: boolean
  inputBinding:
    prefix: --solexa
- id: in_eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean
  inputBinding:
    prefix: --ecopcrdb
- id: in_nuc
  doc: Input file contains nucleic sequences
  type: boolean
  inputBinding:
    prefix: --nuc
- id: in_prot
  doc: Input file contains protein sequences
  type: boolean
  inputBinding:
    prefix: --prot
- id: in_fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: in_fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: in_eco_pcr_db_output
  doc: "Output sequences in ecopcr database format (sequence\nrecords are not printed\
    \ on standard output)"
  type: string
  inputBinding:
    prefix: --ecopcrdb-output
- id: in_uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean
  inputBinding:
    prefix: --uppercase
- id: in_created
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_nine
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_juin
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_two_zero_one_two
  doc: ''
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extractreads
