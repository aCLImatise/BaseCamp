#!/usr/bin/env cwl-runner

baseCommand:
- run_metasv_age.py
class: CommandLineTool
cwlVersion: v1.0
id: run_metasv_age.py
inputs:
- doc: 'Reference FASTA (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Assembly FASTA (default: None)'
  id: assembly
  inputBinding:
    prefix: --assembly
  type: string
- doc: 'Path to AGE executable (default: None)'
  id: age
  inputBinding:
    prefix: --age
  type: string
- doc: 'Work directory (default: work)'
  id: work
  inputBinding:
    prefix: --work
  type: string
- doc: 'Padding to apply on both sides of the bed regions (default: 500)'
  id: pad
  inputBinding:
    prefix: --pad
  type: string
- doc: 'Number of threads to use (default: 1)'
  id: n_threads
  inputBinding:
    prefix: --nthreads
  type: string
- doc: 'Chromosome list to process (default: [])'
  id: chrs
  inputBinding:
    prefix: --chrs
  type:
    items: string
    type: array
- doc: 'SV types list to process (INS, DEL, INV) (default: [])'
  id: sv_types
  inputBinding:
    prefix: --sv_types
  type:
    items: string
    type: array
- doc: 'Max time for assembly processes to run (default: 300)'
  id: timeout
  inputBinding:
    prefix: --timeout
  type: string
- doc: "Don't delete temporary files (default: False)"
  id: keep_temp
  inputBinding:
    prefix: --keep_temp
  type: boolean
- doc: 'Tool used for assembly (default: spades)'
  id: assembly_tool
  inputBinding:
    prefix: --assembly_tool
  type: string
- doc: 'Minimum length of contig to consider (default: 200)'
  id: min_contig_len
  inputBinding:
    prefix: --min_contig_len
  type: long
- doc: 'Maximum length of an SV interval (default: 1000000)'
  id: max_region_len
  inputBinding:
    prefix: --max_region_len
  type: long
- doc: 'Minimum length of deletion sub-alginment (default: 50)'
  id: min_del_sub_align_len
  inputBinding:
    prefix: --min_del_subalign_len
  type: long
- doc: 'Minimum length of inversion sub-alginment (default: 50)'
  id: min_in_v_sub_align_len
  inputBinding:
    prefix: --min_inv_subalign_len
  type: long
- doc: 'Window size for AGE to merge nearby breakpoints (default: 20)'
  id: age_window
  inputBinding:
    prefix: --age_window
  type: string
- doc: 'BED file for assembly (default: None)'
  id: intervals_bed
  inputBinding:
    prefix: --intervals_bed
  type: long
