class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_wgsim2rnf.cwl
inputs:
- id: wg_sim_fast_q_one
  doc: First WgSim FASTQ file (- for standard input)
  type: File
  inputBinding:
    prefix: --wgsim-fastq-1
- id: wg_sim_fast_q_two
  doc: 'Second WgSim FASTQ file (in case of paired-end reads, default: none).'
  type: File
  inputBinding:
    prefix: --wgsim-fastq-2
- id: rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  inputBinding:
    prefix: --rnf-fastq
- id: fa_idx
  doc: FAI index of the reference FASTA file (- for standard input). It can be created
    using 'samtools faidx'.
  type: File
  inputBinding:
    prefix: --faidx
- id: genome_id
  doc: 'Genome ID in RNF (default: 1).'
  type: long
  inputBinding:
    prefix: --genome-id
- id: allow_unmapped
  doc: Allow unmapped reads.
  type: boolean
  inputBinding:
    prefix: --allow-unmapped
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- wgsim2rnf
