class: CommandLineTool
id: minipolish.cwl
inputs:
- id: in_threads
  doc: "Number of threads to use for alignment and polishing\n(default: 8)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_rounds
  doc: 'Number of full Racon polishing rounds (default: 2)'
  type: long
  inputBinding:
    prefix: --rounds
- id: in_pac_bio
  doc: "Use this flag for PacBio reads to make Minipolish\nuse the map-pb Minimap2\
    \ preset (default: assumes\nNanopore reads and uses the map-ont preset)"
  type: boolean
  inputBinding:
    prefix: --pacbio
- id: in_reads
  doc: Long reads for polishing (FASTA or FASTQ format)
  type: string
  inputBinding:
    position: 0
- id: in_assembly
  doc: Miniasm assembly to be polished (GFA format)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- minipolish
