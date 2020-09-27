class: CommandLineTool
id: sga_preqc.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: 'use NUM threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_simple
  doc: only compute the metrics that do not need the FM-index
  type: boolean
  inputBinding:
    prefix: --simple
- id: in_max_contig_length
  doc: 'stop contig extension at N bp (default: 50000)'
  type: long
  inputBinding:
    prefix: --max-contig-length
- id: in_reference
  doc: use the reference FILE to calculate GC plot
  type: File
  inputBinding:
    prefix: --reference
- id: in_diploid_reference_mode
  doc: "generate metrics assuming that the input data\nis a reference genome, not\
    \ a collection of reads"
  type: boolean
  inputBinding:
    prefix: --diploid-reference-mode
- id: in_force_em
  doc: "force preqc to proceed even if the coverage model\ndoes not converge. This\
    \ allows the rest of the program to continue\nbut the branch and genome size estimates\
    \ may be misleading"
  type: boolean
  inputBinding:
    prefix: --force-EM
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- preqc
