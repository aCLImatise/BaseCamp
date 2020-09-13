class: CommandLineTool
id: ../../../rust_plot_transcript.bak.cwl
inputs:
- id: in_directory_path_outputfile
  doc: directory  path to outputfile, default is "plot_transcript"
  type: File
  inputBinding:
    prefix: -o
- id: in_transcriptome
  doc: "fasta file of transcripts, CDS start and end may be\nprovided on description\
    \ line using tab separation e.g.\n>NM_0001 10 5000, otherwise it searches for\
    \ longest\nORF"
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: sorted bam file of alignments to transcriptome
  type: string
  inputBinding:
    position: 1
- id: in_offset
  doc: nucleotide offset to A-site
  type: string
  inputBinding:
    position: 2
- id: in_lengths
  doc: "lengths of footprints included, for example 28:32 is\n28,29,30,31,32"
  type: string
  inputBinding:
    position: 3
- id: in_rust_codon_file
  doc: path to file produced from "rust_codon"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rust_plot_transcript.bak
