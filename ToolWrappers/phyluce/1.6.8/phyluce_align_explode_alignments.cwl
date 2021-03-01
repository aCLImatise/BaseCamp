class: CommandLineTool
id: phyluce_align_explode_alignments.cwl
inputs:
- id: in_alignments
  doc: Input folder of alignments
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output_folder_fasta
  doc: Output folder of fasta files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_conf
  doc: Config file for renaming
  type: File?
  inputBinding:
    prefix: --conf
- id: in_section
  doc: Section of config file to use
  type: File?
  inputBinding:
    prefix: --section
- id: in_exclude
  doc: Taxa/taxon to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_by_tax_on
  doc: Explode file by taxon instead of by-locus
  type: boolean?
  inputBinding:
    prefix: --by-taxon
- id: in_include_locus
  doc: Include the locus name in the FASTA header
  type: boolean?
  inputBinding:
    prefix: --include-locus
- id: in_var_8
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder_fasta
  doc: Output folder of fasta files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder_fasta)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_explode_alignments
