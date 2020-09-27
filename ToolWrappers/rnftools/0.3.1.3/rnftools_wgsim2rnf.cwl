class: CommandLineTool
id: rnftools_wgsim2rnf.cwl
inputs:
- id: in_wg_sim_fast_q_one
  doc: First WgSim FASTQ file (- for standard input)
  type: File
  inputBinding:
    prefix: --wgsim-fastq-1
- id: in_wg_sim_fast_q_two
  doc: "Second WgSim FASTQ file (in case of paired-end reads,\ndefault: none)."
  type: File
  inputBinding:
    prefix: --wgsim-fastq-2
- id: in_rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  inputBinding:
    prefix: --rnf-fastq
- id: in_fa_idx
  doc: "FAI index of the reference FASTA file (- for standard\ninput). It can be created\
    \ using 'samtools faidx'."
  type: File
  inputBinding:
    prefix: --faidx
- id: in_genome_id
  doc: 'Genome ID in RNF (default: 1).'
  type: long
  inputBinding:
    prefix: --genome-id
- id: in_allow_unmapped
  doc: Allow unmapped reads.
  type: boolean
  inputBinding:
    prefix: --allow-unmapped
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  outputBinding:
    glob: $(inputs.in_rnf_fast_q)
cwlVersion: v1.1
baseCommand:
- rnftools
- wgsim2rnf
