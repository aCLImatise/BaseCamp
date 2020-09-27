class: CommandLineTool
id: CAT_summarise.cwl
inputs:
- id: in__inputfile_path
  doc: ", --input_file     Path to named CAT contig classification file or BAT\nbin\
    \ classification file. Currently only official ranks\nare supported, and only\
    \ classification files\ncontaining a single classification per contig / bin."
  type: boolean
  inputBinding:
    prefix: -i
- id: in__outputfile_path
  doc: ', --output_file    Path to output file.'
  type: File
  inputBinding:
    prefix: -o
- id: in__contigsfastapath_contigs
  doc: ", --contigs_fasta\nPath to contigs fasta file. This is required if you\nwant\
    \ to summarise a contig classification file."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_force
  doc: Force overwrite existing files.
  type: boolean
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: Suppress verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfile_path
  doc: ', --output_file    Path to output file.'
  type: File
  outputBinding:
    glob: $(inputs.in__outputfile_path)
cwlVersion: v1.1
baseCommand:
- CAT
- summarise
