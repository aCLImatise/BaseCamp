class: CommandLineTool
id: bank2scaff.cwl
inputs:
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_use_eids_names
  doc: Use EIDs for names (DEFAULT)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_use_iids_names
  doc: Use IIDs for names
  type: boolean
  inputBinding:
    prefix: -i
- id: in_print_just_eids
  doc: Print just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: in_print_just_iids
  doc: Print just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: in_show_ungapped_lengths
  doc: Show the ungapped contig lengths in the scaff file
  type: boolean
  inputBinding:
    prefix: -u
- id: in_create_links_file
  doc: Create a Arachne links file
  type: boolean
  inputBinding:
    prefix: -l
- id: in_print_scaffold_sequences
  doc: Print the scaffold consensus sequences in multi-fasta format
  type: boolean
  inputBinding:
    prefix: -f
- id: in_use_estimated_size
  doc: Use the estimated gaps size to space contigs
  type: boolean
  inputBinding:
    prefix: -g
- id: in_join_contigs_spaced
  doc: Join contigs spaced by less than 2 bp (needs -f, if G provided overrides 2)
  type: boolean
  inputBinding:
    prefix: -j
- id: in_gaps_val_will
  doc: Gaps < val will have val N's between them (-g)
  type: string
  inputBinding:
    prefix: -G
- id: in_specify_number_place
  doc: Specify number of N's to place between contigs
  type: long
  inputBinding:
    prefix: -N
- id: in_bank_two_sc_aff
  doc: '[options]  <bank path>'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank2scaff
