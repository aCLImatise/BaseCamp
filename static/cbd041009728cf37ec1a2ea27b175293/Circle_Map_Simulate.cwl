class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Circle_Map_Simulate.cwl
inputs:
- id: genome_fasta_file
  doc: Genome fasta file (Needs to be indexed with samtools faidx)
  type: boolean
  inputBinding:
    prefix: -g
- id: _readnumber_number
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
- id: _basename_fastq
  doc: ', --base-name      Fastq output basename'
  type: boolean
  inputBinding:
    prefix: -b
- id: _skipregion_regions
  doc: ', --skip-region    Regions of the genome to skip the simulation. The input
    needs to be in bed format'
  type: boolean
  inputBinding:
    prefix: -s
- id: _readlength_read
  doc: ', --read-length    Read length to simulate'
  type: boolean
  inputBinding:
    prefix: -r
- id: _meaninsert_mean
  doc: ', --mean-insert    Mean of the insert size distribution'
  type: boolean
  inputBinding:
    prefix: -m
- id: _meancoverage_mean
  doc: ', --mean-coverage  Mean sequencing coverage within the eccDNA coordinates'
  type: boolean
  inputBinding:
    prefix: -c
- id: _processes_number
  doc: ', --processes      Number of parallel processes to use'
  type: boolean
  inputBinding:
    prefix: -p
- id: variants
  doc: If set to true, introduce mutations in the reference genome prior to simulatingreads.
  type: boolean
  inputBinding:
    prefix: --variants
- id: _substitution_fraction
  doc: ', --substitution   Fraction of base substitutions to introduce on the genome.
    Default: 0.0001'
  type: boolean
  inputBinding:
    prefix: -S
- id: _indels_fraction
  doc: ', --Indels         Fraction of indels to introduce on the genome. Default:
    0.001'
  type: boolean
  inputBinding:
    prefix: -I
- id: _javamemory_java
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
- id: _instrument_sequecing
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
- id: ir_two
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
- id: dr_two
  doc: ', --delRate2     the second-read deletion rate (default: 0.00023). Requires
    -e'
  type: boolean
  inputBinding:
    prefix: -dr2
- id: circle_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_two_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Simulate
