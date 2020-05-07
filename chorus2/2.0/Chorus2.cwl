class: CommandLineTool
id: Chorus2.cwl
inputs:
- id: jellyfish
  doc: The path where Jellyfish software installed
  type: string
  inputBinding:
    prefix: --jellyfish
- id: bwa
  doc: The path where BWA software installed
  type: string
  inputBinding:
    prefix: --bwa
- id: genome
  doc: Fasta format genome file, should include all sequences from genome
  type: string
  inputBinding:
    prefix: --genome
- id: input
  doc: Fasta format input file, can be whole genome, a chromosome or one region from
    genome
  type: string
  inputBinding:
    prefix: --input
- id: save
  doc: The output folder for saving results
  type: string
  inputBinding:
    prefix: --save
- id: primer
  doc: "A specific 5' labeled R primer for PCR reaction. For example: CGTGGTCGCGTCTCA.\
    \ (Default is none)"
  type: string
  inputBinding:
    prefix: --primer
- id: threads
  doc: 'Number of threads or CPUs to use. (Default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: length
  doc: 'The probe length. (Default: 45)'
  type: long
  inputBinding:
    prefix: --length
- id: homology
  doc: 'The maximum homology(%) between target sequence and probe, range from 50 to
    100. (Default: 75)'
  type: string
  inputBinding:
    prefix: --homology
- id: dtm
  doc: 'The minimum value of dTm (hybrid Tm - hairpin Tm), range from 0 to 37. (Default:
    10)'
  type: string
  inputBinding:
    prefix: --dtm
- id: step
  doc: 'The step length for k-mer searching in a sliding window, step length>=1. (Default:
    5)'
  type: string
  inputBinding:
    prefix: --step
- id: docker
  doc: Only used in Docker version of Chorus
  type: string
  inputBinding:
    prefix: --docker
- id: ploidy
  doc: 'The ploidy of the given genome (test version). (Default: 2)'
  type: string
  inputBinding:
    prefix: --ploidy
- id: j
  doc: /opt/software/jellyfish/bin/jellyfish -b /opt/software/bwa/bwa -s sample
  type: boolean
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- Chorus2
