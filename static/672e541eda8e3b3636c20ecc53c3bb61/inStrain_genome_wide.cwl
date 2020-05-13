class: CommandLineTool
id: inStrain_genome_wide.cwl
inputs:
- id: s
  doc: '[STB [STB ...]], --stb [STB [STB ...]] Scaffold to bin. This can be a file
    with each line listing a scaffold and a bin name, tab-seperated. This can also
    be a space-seperated list of .fasta files, with one genome per .fasta file. If
    nothing is provided, all scaffolds will be treated as belonging to the same genome
    (default: [])'
  type: boolean
  inputBinding:
    prefix: -s
- id: mm_level
  doc: 'Create files on the mm level (see documentation for info) (default: False)'
  type: boolean
  inputBinding:
    prefix: --mm_level
- id: is
  doc: 'an inStrain profile object (default: None)'
  type: string
  inputBinding:
    prefix: --IS
- id: store_everything
  doc: 'Store gene sequences in the IS object (default: False)'
  type: boolean
  inputBinding:
    prefix: --store_everything
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- genome_wide
