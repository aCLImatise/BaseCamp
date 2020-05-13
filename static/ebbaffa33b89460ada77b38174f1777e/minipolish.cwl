class: CommandLineTool
id: minipolish.cwl
inputs:
- id: reads
  doc: Long reads for polishing (FASTA or FASTQ format)
  type: string
  inputBinding:
    position: 0
- id: assembly
  doc: Miniasm assembly to be polished (GFA format)
  type: string
  inputBinding:
    position: 1
- id: threads
  doc: 'Number of threads to use for alignment and polishing (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: rounds
  doc: 'Number of full Racon polishing rounds (default: 2)'
  type: string
  inputBinding:
    prefix: --rounds
- id: pac_bio
  doc: 'Use this flag for PacBio reads to make Minipolish use the map-pb Minimap2
    preset (default: assumes Nanopore reads and uses the map-ont preset)'
  type: boolean
  inputBinding:
    prefix: --pacbio
outputs: []
cwlVersion: v1.1
baseCommand:
- minipolish
