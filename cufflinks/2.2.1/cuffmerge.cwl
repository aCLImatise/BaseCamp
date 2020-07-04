class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cuffmerge.cwl
inputs:
- id: h_slash_help
  doc: Prints the help message and exits
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: outputdir_directory_written
  doc: '<output_dir>     Directory where merged assembly will be written  [ default:
    ./merged_asm  ]'
  type: boolean
  inputBinding:
    prefix: -o
- id: g_slash_ref_gtf
  doc: An optional "reference" annotation GTF.
  type: boolean
  inputBinding:
    prefix: -g/--ref-gtf
- id: s_slash_ref_sequence
  doc: <seq_dir>/<seq_fasta> Genomic DNA sequences for the reference.
  type: boolean
  inputBinding:
    prefix: -s/--ref-sequence
- id: min_isoform_fraction
  doc: 'Discard isoforms with abundance below this       [ default:           0.05
    ]'
  type: string
  inputBinding:
    prefix: --min-isoform-fraction
- id: p_slash_num_threads
  doc: '<int>            Use this many threads to merge assemblies.       [ default:             1  ]'
  type: boolean
  inputBinding:
    prefix: -p/--num-threads
- id: keep_tmp
  doc: Keep all intermediate files during merge
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: assembly_gtf_list_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffmerge
