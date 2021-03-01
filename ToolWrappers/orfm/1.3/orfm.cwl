class: CommandLineTool
id: orfm.cwl
inputs:
- id: in_minimum_number_acids
  doc: "minimum number of nucleotides (not amino acids) to call\nan ORF on [default:\
    \ 96]"
  type: long?
  inputBinding:
    prefix: -m
- id: in_output_nucleotide_sequences
  doc: "output nucleotide sequences of transcripts to this path\n[default: none]"
  type: File?
  inputBinding:
    prefix: -t
- id: in_ignore_sequence_read
  doc: "ignore the sequence of the read beyond this, useful when\ncomparing reads\
    \ from with different read lengths\n[default: none]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_codon_table_translation
  doc: "codon table for translation (see\nhttp://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html/index.cgi?chapter=tgencodes\n\
    for details) [default: 1]"
  type: long?
  inputBinding:
    prefix: -c
- id: in_print_actual_codons
  doc: "print the actual stop codons at sequence ends if encoded\n[default: do not]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_only_print_orfs
  doc: "only print those ORFs in the same frame as a stop codon\n[default: off]"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_run_version_is
  doc: "do not run unless this version of OrfM is at least this version\nnumber (e.g.\
    \ 0.7.1)"
  type: long?
  inputBinding:
    prefix: -r
- id: in_show_version_information
  doc: show version information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_nucleotide_sequences
  doc: "output nucleotide sequences of transcripts to this path\n[default: none]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_nucleotide_sequences)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/orfm:1.3--hed695b0_0
cwlVersion: v1.1
baseCommand:
- orfm
