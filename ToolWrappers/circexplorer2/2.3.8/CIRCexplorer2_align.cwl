class: CommandLineTool
id: CIRCexplorer2_align.cwl
inputs:
- id: in_gtf
  doc: Annotation GTF file.
  type: File
  inputBinding:
    prefix: --gtf
- id: in_genome
  doc: Genome fasta file.
  type: File
  inputBinding:
    prefix: --genome
- id: in_bowtie_one
  doc: Index files for Bowtie1 (used for TopHat-Fusion).
  type: long
  inputBinding:
    prefix: --bowtie1
- id: in_bowtie_two
  doc: Index files for Bowtie2 (used for TopHat2).
  type: long
  inputBinding:
    prefix: --bowtie2
- id: in_thread
  doc: 'Running threads. [default: 10]'
  type: long
  inputBinding:
    prefix: --thread
- id: in_fast_q
  doc: Input file.
  type: File
  inputBinding:
    prefix: --fastq
- id: in_output
  doc: 'Output directory. [default: alignment]'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_bed
  doc: "Output file.\n[default: back_spliced_junction.bed]"
  type: File
  inputBinding:
    prefix: --bed
- id: in_bw
  doc: Create BigWig file.
  type: boolean
  inputBinding:
    prefix: --bw
- id: in_scale
  doc: Scale to HPB.
  type: boolean
  inputBinding:
    prefix: --scale
- id: in_skip_top_hat
  doc: Skip TopHat mapping.
  type: boolean
  inputBinding:
    prefix: --skip-tophat
- id: in_skip_top_hat_fusion
  doc: Skip TopHat-Fusion mapping.
  type: boolean
  inputBinding:
    prefix: --skip-tophat-fusion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output directory. [default: alignment]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_bed
  doc: "Output file.\n[default: back_spliced_junction.bed]"
  type: File
  outputBinding:
    glob: $(inputs.in_bed)
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- align
