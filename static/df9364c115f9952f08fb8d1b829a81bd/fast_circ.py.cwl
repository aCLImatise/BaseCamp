class: CommandLineTool
id: fast_circ.py.cwl
inputs:
- id: in_ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: in_genome
  doc: Genome FASTA file.
  type: File
  inputBinding:
    prefix: --genome
- id: in_gtf
  doc: Annotation GTF file.
  type: File
  inputBinding:
    prefix: --gtf
- id: in_aligner_tophatfusion_star
  doc: Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl).
  type: string
  inputBinding:
    prefix: -t
- id: in_pe
  doc: Parse paired-end alignment file (only for TopHat-Fusion).
  type: boolean
  inputBinding:
    prefix: --pe
- id: in_fast_q
  doc: Input file.
  type: File
  inputBinding:
    prefix: --fastq
- id: in_pa_plus
  doc: TopHat mapping directory for p(A)+ RNA-seq.
  type: Directory
  inputBinding:
    prefix: --pAplus
- id: in_thread
  doc: 'Running threads. [default: 10]'
  type: long
  inputBinding:
    prefix: --thread
- id: in_output
  doc: 'Output directory. [default: .]'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_annotate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_de_novo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output directory. [default: .]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- fast_circ.py
