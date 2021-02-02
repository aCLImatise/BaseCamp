class: CommandLineTool
id: dRep_choose.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_completeness_weight
  doc: 'completeness weight (default: 1)'
  type: long
  inputBinding:
    prefix: --completeness_weight
- id: in_contamination_weight
  doc: 'contamination weight (default: 5)'
  type: long
  inputBinding:
    prefix: --contamination_weight
- id: in_strain_heterogeneity_weight
  doc: 'strain heterogeneity weight (default: 1)'
  type: long
  inputBinding:
    prefix: --strain_heterogeneity_weight
- id: in_n_five_zero_weight
  doc: 'weight of log(genome N50) (default: 0.5)'
  type: long
  inputBinding:
    prefix: --N50_weight
- id: in_size_weight
  doc: 'weight of log(genome size) (default: 0)'
  type: long
  inputBinding:
    prefix: --size_weight
- id: in_check_m_method
  doc: "Either lineage_wf (more accurate) or taxonomy_wf\n(faster) (default: lineage_wf)"
  type: string
  inputBinding:
    prefix: --checkM_method
- id: in_genome_info
  doc: "location of .csv file containing quality information\non the genomes. Must\
    \ contain: [\"genome\"(basename of\n.fasta file of that genome), \"completeness\"\
    (0-100\nvalue for completeness of the genome),\n\"contamination\"(0-100 value\
    \ of the contamination of\nthe genome)] (default: None)"
  type: File
  inputBinding:
    prefix: --genomeInfo
- id: in_ignore_genome_quality
  doc: "Don't run checkM or do any quality filtering. NOT\nRECOMMENDED! This is useful\
    \ for use with\nbacteriophages or eukaryotes or things where checkM\nscoring does\
    \ not work. Will only choose genomes based\non length and N50 (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --ignoreGenomeQuality
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dRep
- choose
