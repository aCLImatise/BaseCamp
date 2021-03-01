class: CommandLineTool
id: rnftools_mason2rnf.cwl
inputs:
- id: in_sam
  doc: "Input SAM/BAM with true (expected) alignments of the\nreads (- for standard\
    \ input)."
  type: File?
  inputBinding:
    prefix: --sam
- id: in_rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File?
  inputBinding:
    prefix: --rnf-fastq
- id: in_fa_idx
  doc: "FAI index of the reference FASTA file (- for standard\ninput). It can be created\
    \ using 'samtools faidx'."
  type: File?
  inputBinding:
    prefix: --faidx
- id: in_genome_id
  doc: 'Genome ID in RNF (default: 1).'
  type: long?
  inputBinding:
    prefix: --genome-id
- id: in_allow_unmapped
  doc: Allow unmapped reads.
  type: boolean?
  inputBinding:
    prefix: --allow-unmapped
- id: in_simulator_name
  doc: "Name of the simulator (for RNF).\n"
  type: string?
  inputBinding:
    prefix: --simulator-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File?
  outputBinding:
    glob: $(inputs.in_rnf_fast_q)
hints: []
cwlVersion: v1.1
baseCommand:
- rnftools
- mason2rnf
