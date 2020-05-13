class: CommandLineTool
id: run_metasv_age.py.cwl
inputs:
- id: reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: assembly
  doc: 'Assembly FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --assembly
- id: age
  doc: 'Path to AGE executable (default: None)'
  type: string
  inputBinding:
    prefix: --age
- id: work
  doc: 'Work directory (default: work)'
  type: string
  inputBinding:
    prefix: --work
- id: pad
  doc: 'Padding to apply on both sides of the bed regions (default: 500)'
  type: string
  inputBinding:
    prefix: --pad
- id: n_threads
  doc: 'Number of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --nthreads
- id: chrs
  doc: 'Chromosome list to process (default: [])'
  type: string[]
  inputBinding:
    prefix: --chrs
- id: sv_types
  doc: 'SV types list to process (INS, DEL, INV) (default: [])'
  type: string[]
  inputBinding:
    prefix: --sv_types
- id: timeout
  doc: 'Max time for assembly processes to run (default: 300)'
  type: string
  inputBinding:
    prefix: --timeout
- id: keep_temp
  doc: "Don't delete temporary files (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep_temp
- id: assembly_tool
  doc: 'Tool used for assembly (default: spades)'
  type: string
  inputBinding:
    prefix: --assembly_tool
- id: min_contig_len
  doc: 'Minimum length of contig to consider (default: 200)'
  type: long
  inputBinding:
    prefix: --min_contig_len
- id: max_region_len
  doc: 'Maximum length of an SV interval (default: 1000000)'
  type: long
  inputBinding:
    prefix: --max_region_len
- id: min_del_sub_align_len
  doc: 'Minimum length of deletion sub-alginment (default: 50)'
  type: long
  inputBinding:
    prefix: --min_del_subalign_len
- id: min_in_v_sub_align_len
  doc: 'Minimum length of inversion sub-alginment (default: 50)'
  type: long
  inputBinding:
    prefix: --min_inv_subalign_len
- id: age_window
  doc: 'Window size for AGE to merge nearby breakpoints (default: 20)'
  type: string
  inputBinding:
    prefix: --age_window
- id: intervals_bed
  doc: 'BED file for assembly (default: None)'
  type: long
  inputBinding:
    prefix: --intervals_bed
outputs: []
cwlVersion: v1.1
baseCommand:
- run_metasv_age.py
