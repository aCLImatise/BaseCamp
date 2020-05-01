#!/usr/bin/env cwl-runner

baseCommand:
- annotate_junctions
class: CommandLineTool
cwlVersion: v1.0
id: annotate_junctions
inputs:
- doc: 'junctionlist (default: None)'
  id: j_list
  inputBinding:
    prefix: -jlist
  type: string
- doc: 'junctiontab (default: None)'
  id: j_tab
  inputBinding:
    prefix: -jtab
  type: string
- doc: 'Reference GTF (default: None)'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: 'Fasta file Must have same chromosomes as BAM and GTF (default: None)'
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: "Output directory, default='junctions_out' (default: ./junctions_out/)"
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'Flanking intron sequence (number of bases) (default: 20)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'Size to examine for repeats (number of bases) (default: 10)'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: 'Verbose, detailed analysis (T/F) (default: T)'
  id: v
  inputBinding:
    prefix: -v
  type: string
