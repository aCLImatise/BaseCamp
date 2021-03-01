class: CommandLineTool
id: alfred_count_rna.cwl
inputs:
- id: in_arg_min_mapping
  doc: '[ --map-qual ] arg (=10)           min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_strandspecific_counting
  doc: "[ --stranded ] arg (=0)            strand-specific counting (0:\nunstranded,\
    \ 1: stranded, 2: reverse\nstranded)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_n
  doc: '[ --normalize ] arg (=raw)         normalization [raw|fpkm|fpkm_uq]'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_output_file
  doc: '[ --outfile ] arg (="gene.count")  output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_count_ambiguous_readsd
  doc: '[ --ambiguous ]                    count ambiguous readsd'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_gtfgff_file
  doc: '[ --gtf ] arg                      gtf/gff3 file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_geneid_gtfgff
  doc: '[ --id ] arg (=gene_id)            gtf/gff3 attribute'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_exon_feature
  doc: '[ --feature ] arg (=exon)          gtf/gff3 feature'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_bed_file
  doc: '[ --bed ] arg                      bed file'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_aligned_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --outfile ] arg (="gene.count")  output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- alfred
- count_rna
