class: CommandLineTool
id: Circle_Map_Simulate.cwl
inputs:
- id: bam2bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: g
  doc: Genome fasta file (Needs to be indexed with samtools faidx)
  type: boolean
  inputBinding:
    prefix: -g
- id: n
  doc: ', --read-number    Number of reads to simulate'
  type: boolean
  inputBinding:
    prefix: -N
- id: output
  doc: Output file name
  type: string
  inputBinding:
    prefix: --output
- id: dir
  doc: ', --directory    Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: b
  doc: ', --base-name      Fastq output basename'
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: ', --skip-region    Regions of the genome to skip the simulation. The input
    needs to be in bed format'
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: ', --read-length    Read length to simulate'
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: ', --mean-insert    Mean of the insert size distribution'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: ', --mean-coverage  Mean sequencing coverage within the eccDNA coordinates'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: ', --processes      Number of parallel processes to use'
  type: boolean
  inputBinding:
    prefix: -p
- id: variants
  doc: If set to true, introduce mutations in the reference genome prior to simulatingreads.
  type: boolean
  inputBinding:
    prefix: --variants
- id: s
  doc: ', --substitution   Fraction of base substitutions to introduce on the genome.
    Default: 0.0001'
  type: boolean
  inputBinding:
    prefix: -S
- id: i
  doc: ', --Indels         Fraction of indels to introduce on the genome. Default:
    0.001'
  type: boolean
  inputBinding:
    prefix: -I
- id: j
  doc: ', --java_memory    Java memory allocation, required for mutating the genome.
    Default: -Xmx16g'
  type: boolean
  inputBinding:
    prefix: -J
- id: error
  doc: Introduce sequencing errors ( Uses ART on the background)
  type: boolean
  inputBinding:
    prefix: --error
- id: i
  doc: ', --instrument     Illumina sequecing instrument to simulate reads from (Default
    HiSeq 2500)'
  type: boolean
  inputBinding:
    prefix: -i
- id: ir
  doc: ', --insRate       the first-read insertion rate (default: 0.00009). Requires
    -e'
  type: boolean
  inputBinding:
    prefix: -ir
- id: ir2
  doc: ', --insRate2     the second-read insertion rate (default: 0.00015). Requires
    -e'
  type: boolean
  inputBinding:
    prefix: -ir2
- id: dr
  doc: ', --delRate       the first-read deletion rate (default: 0.00011). Requires
    -e'
  type: boolean
  inputBinding:
    prefix: -dr
- id: dr2
  doc: ', --delRate2     the second-read deletion rate (default: 0.00023). Requires
    -e'
  type: boolean
  inputBinding:
    prefix: -dr2
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Simulate
