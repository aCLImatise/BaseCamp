class: CommandLineTool
id: Circle_Map_Simulate.cwl
inputs:
- id: in_genome_fasta_file
  doc: "Genome fasta file (Needs to be indexed with samtools\nfaidx)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in__readnumber_number
  doc: ', --read-number    Number of reads to simulate'
  type: boolean
  inputBinding:
    prefix: -N
- id: in_output
  doc: Output file name
  type: File
  inputBinding:
    prefix: --output
- id: in_dir
  doc: ', --directory    Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: in__basename_fastq
  doc: ', --base-name      Fastq output basename'
  type: boolean
  inputBinding:
    prefix: -b
- id: in__skipregion_regions
  doc: ", --skip-region    Regions of the genome to skip the simulation. The\ninput\
    \ needs to be in bed format"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__readlength_read
  doc: ', --read-length    Read length to simulate'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__meaninsert_mean
  doc: ', --mean-insert    Mean of the insert size distribution'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__meancoveragemean_sequencing
  doc: ", --mean-coverage\nMean sequencing coverage within the eccDNA coordinates"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__processes_number
  doc: ', --processes      Number of parallel processes to use'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_variants
  doc: "If set to true, introduce mutations in the reference\ngenome prior to simulatingreads."
  type: boolean
  inputBinding:
    prefix: --variants
- id: in__substitution_fraction
  doc: ", --substitution   Fraction of base substitutions to introduce on the\ngenome.\
    \ Default: 0.0001"
  type: boolean
  inputBinding:
    prefix: -S
- id: in__indels_fraction
  doc: ", --Indels         Fraction of indels to introduce on the genome.\nDefault:\
    \ 0.001"
  type: boolean
  inputBinding:
    prefix: -I
- id: in__javamemory_java
  doc: ", --java_memory    Java memory allocation, required for mutating the\ngenome.\
    \ Default: -Xmx16g"
  type: boolean
  inputBinding:
    prefix: -J
- id: in_error
  doc: "Introduce sequencing errors ( Uses ART on the\nbackground)"
  type: boolean
  inputBinding:
    prefix: --error
- id: in__instrument_illumina
  doc: ", --instrument     Illumina sequecing instrument to simulate reads from\n\
    (Default HiSeq 2500)"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_ir
  doc: ", --insRate       the first-read insertion rate (default: 0.00009).\nRequires\
    \ -e"
  type: boolean
  inputBinding:
    prefix: -ir
- id: in_ir_two
  doc: ", --insRate2     the second-read insertion rate (default: 0.00015).\nRequires\
    \ -e"
  type: boolean
  inputBinding:
    prefix: -ir2
- id: in_dr
  doc: ", --delRate       the first-read deletion rate (default: 0.00011).\nRequires\
    \ -e"
  type: boolean
  inputBinding:
    prefix: -dr
- id: in_dr_two
  doc: ", --delRate2     the second-read deletion rate (default: 0.00023).\nRequires\
    \ -e\n"
  type: boolean
  inputBinding:
    prefix: -dr2
- id: in_circle_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_two_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Simulate
