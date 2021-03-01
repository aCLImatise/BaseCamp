class: CommandLineTool
id: dRep_filter.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long?
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_length
  doc: 'Minimum genome length (default: 50000)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_completeness
  doc: 'Minumum genome completeness (default: 75)'
  type: long?
  inputBinding:
    prefix: --completeness
- id: in_contamination
  doc: 'Maximum genome contamination (default: 25)'
  type: long?
  inputBinding:
    prefix: --contamination
- id: in_ignore_genome_quality
  doc: "Don't run checkM or do any quality filtering. NOT\nRECOMMENDED! This is useful\
    \ for use with\nbacteriophages or eukaryotes or things where checkM\nscoring does\
    \ not work. Will only choose genomes based\non length and N50 (default: False)"
  type: boolean?
  inputBinding:
    prefix: --ignoreGenomeQuality
- id: in_genomes_filter_ifbdb
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to filter\
    \ in .fasta format. Not necessary if\nBdb or Wdb already exist (default: None)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_genome_info
  doc: "location of .csv file containing quality information\non the genomes. Must\
    \ contain: [\"genome\"(basename of\n.fasta file of that genome), \"completeness\"\
    (0-100\nvalue for completeness of the genome),\n\"contamination\"(0-100 value\
    \ of the contamination of\nthe genome)] (default: None)"
  type: File?
  inputBinding:
    prefix: --genomeInfo
- id: in_check_m_method
  doc: "Either lineage_wf (more accurate) or taxonomy_wf\n(faster) (default: lineage_wf)"
  type: string?
  inputBinding:
    prefix: --checkM_method
- id: in_set_recursion
  doc: "Increases the python recursion limit. NOT RECOMMENDED\nunless checkM is crashing\
    \ due to recursion issues.\nRecommended to set to 2000 if needed, but setting\
    \ this\ncould crash python (default: 0)\n"
  type: long?
  inputBinding:
    prefix: --set_recursion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dRep
- filter
