class: CommandLineTool
id: phyluce_align_get_taxon_locus_counts_in_alignments.cwl
inputs:
- id: in_input_directory_alignment
  doc: The input directory of alignment files
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: "The input alignment format\n"
  type: string
  inputBinding:
    prefix: --input-format
- id: in_var_2
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_taxon_locus_counts_in_alignments
