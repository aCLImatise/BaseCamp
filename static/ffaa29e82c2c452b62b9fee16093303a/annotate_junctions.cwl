class: CommandLineTool
id: annotate_junctions.cwl
inputs:
- id: j_list
  doc: 'junctionlist (default: None)'
  type: string
  inputBinding:
    prefix: -jlist
- id: j_tab
  doc: 'junctiontab (default: None)'
  type: string
  inputBinding:
    prefix: -jtab
- id: g
  doc: 'Reference GTF (default: None)'
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: 'Fasta file Must have same chromosomes as BAM and GTF (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: "Output directory, default='junctions_out' (default: ./junctions_out/)"
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: 'Flanking intron sequence (number of bases) (default: 20)'
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: 'Size to examine for repeats (number of bases) (default: 10)'
  type: string
  inputBinding:
    prefix: -r
- id: v
  doc: 'Verbose, detailed analysis (T/F) (default: T)'
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate_junctions
