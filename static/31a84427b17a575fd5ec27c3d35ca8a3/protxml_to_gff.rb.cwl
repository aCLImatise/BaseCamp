class: CommandLineTool
id: protxml_to_gff.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_debug
  doc: Run in debug mode [false]
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_database
  doc: Database used for ms/ms searches (Fasta Format)
  type: File
  inputBinding:
    prefix: --database
- id: in_coords_file
  doc: A file containing genomic coordinates for predicted proteins and/or 6-frame
    translations
  type: File
  inputBinding:
    prefix: --coords-file
- id: in_stack_charge_states
  doc: Different peptide charge states get separate gff entries [false]
  type: boolean
  inputBinding:
    prefix: --stack-charge-states
- id: in_threshold
  doc: Peptide Probability Threshold (Default 0.95) [0.95]
  type: double
  inputBinding:
    prefix: --threshold
- id: in_prot_threshold
  doc: Protein Probability Threshold (Default 0.99) [0.99]
  type: double
  inputBinding:
    prefix: --prot-threshold
- id: in_gff_id_regex
  doc: Regex with capture group for parsing gff ids from protein ids
  type: string
  inputBinding:
    prefix: --gff-idregex
- id: in_genome_id_regex
  doc: Regex with capture group for parsing genomic ids from protein ids
  type: string
  inputBinding:
    prefix: --genome-idregex
- id: in_ignore_regex
  doc: Regex to match protein ids that we should ignore completely
  type: string
  inputBinding:
    prefix: --ignore-regex
- id: in_include_mods
  doc: Output gff entries for peptide modification sites [false]
  type: boolean
  inputBinding:
    prefix: --include-mods
- id: in_proteins_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prot_xml
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- protxml_to_gff.rb
