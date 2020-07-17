class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/orfm.cwl
inputs:
- id: minimum_number_nucleotides
  doc: 'minimum number of nucleotides (not amino acids) to call an ORF on [default:
    96]'
  type: long
  inputBinding:
    prefix: -m
- id: output_nucleotide_sequences
  doc: 'output nucleotide sequences of transcripts to this path [default: none]'
  type: File
  inputBinding:
    prefix: -t
- id: ignore_sequence_reads
  doc: 'ignore the sequence of the read beyond this, useful when comparing reads from
    with different read lengths [default: none]'
  type: long
  inputBinding:
    prefix: -l
- id: codon_table_translation
  doc: 'codon table for translation (see  http://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html/index.cgi?chapter=tgencodes
    for details) [default: 1]'
  type: string
  inputBinding:
    prefix: -c
- id: print_codons_ends
  doc: 'print the actual stop codons at sequence ends if encoded [default: do not]'
  type: boolean
  inputBinding:
    prefix: -p
- id: only_print_orfs
  doc: 'only print those ORFs in the same frame as a stop codon [default: off]'
  type: boolean
  inputBinding:
    prefix: -s
- id: run_version_orfm
  doc: do not run unless this version of OrfM is at least this version number (e.g.
    0.7.1)
  type: string
  inputBinding:
    prefix: -r
- id: show_version_information
  doc: show version information
  type: boolean
  inputBinding:
    prefix: -v
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- orfm
