class: CommandLineTool
id: cuffmerge.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: assembly_gtf_list_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: '<output_dir>     Directory where merged assembly will be written  [ default:
    ./merged_asm  ]'
  type: boolean
  inputBinding:
    prefix: -o
- id: g
  doc: /--ref-gtf                            An optional "reference" annotation GTF.
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: /--ref-sequence      <seq_dir>/<seq_fasta> Genomic DNA sequences for the reference.
  type: boolean
  inputBinding:
    prefix: -s
- id: min_isoform_fraction
  doc: '<0-1.0>          Discard isoforms with abundance below this       [ default:           0.05
    ]'
  type: boolean
  inputBinding:
    prefix: --min-isoform-fraction
- id: p
  doc: '/--num-threads       <int>            Use this many threads to merge assemblies.       [
    default:             1  ]'
  type: boolean
  inputBinding:
    prefix: -p
- id: keep_tmp
  doc: Keep all intermediate files during merge
  type: boolean
  inputBinding:
    prefix: --keep-tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffmerge
