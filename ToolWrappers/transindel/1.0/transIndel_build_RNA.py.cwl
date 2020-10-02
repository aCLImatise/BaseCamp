class: CommandLineTool
id: transIndel_build_RNA.py.cwl
inputs:
- id: in_reference_genome_used
  doc: :reference genome used for analyzing RNAseq data (required)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_gtf_gene_annotatino
  doc: :gtf gene annotatino file used for analyzing RNAseq data (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_splice_site_size
  doc: :splice site half bin size,  default 20
  type: boolean
  inputBinding:
    prefix: -s
- id: in_mapq_cut_off
  doc: :minimal MapQ in SAM for support SV event, default 60
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: in_max_del_length
  doc: :maximum deletion length to be detected (10e6)
  type: boolean
  inputBinding:
    prefix: --max_del_length
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- transIndel_build_RNA.py
