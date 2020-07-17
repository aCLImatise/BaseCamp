class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/annotate_junctions.cwl
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
- id: reference_gtf_default
  doc: 'Reference GTF (default: None)'
  type: string
  inputBinding:
    prefix: -g
- id: fasta_file_must
  doc: 'Fasta file Must have same chromosomes as BAM and GTF (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: output_directory_default
  doc: "Output directory, default='junctions_out' (default: ./junctions_out/)"
  type: string
  inputBinding:
    prefix: -o
- id: flanking_intron_sequence
  doc: 'Flanking intron sequence (number of bases) (default: 20)'
  type: string
  inputBinding:
    prefix: -s
- id: size_examine_repeats
  doc: 'Size to examine for repeats (number of bases) (default: 10)'
  type: string
  inputBinding:
    prefix: -r
- id: verbose_detailed_analysis
  doc: 'Verbose, detailed analysis (T/F) (default: T)'
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate_junctions
