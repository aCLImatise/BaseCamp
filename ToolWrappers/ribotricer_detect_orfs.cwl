class: CommandLineTool
id: ribotricer_detect_orfs.cwl
inputs:
- id: in_bam
  doc: Path to BAM file  [required]
  type: File
  inputBinding:
    prefix: --bam
- id: in_ribot_ricer_index
  doc: "Path to the index file of ribotricer This\nfile should be generated using\
    \ ribotricer\nprepare-orfs  [required]"
  type: File
  inputBinding:
    prefix: --ribotricer_index
- id: in_prefix
  doc: Prefix to output file  [required]
  type: File
  inputBinding:
    prefix: --prefix
- id: in_stranded
  doc: "[yes|no|reverse]     whether the data is from a strand-specific\nassay If\
    \ not provided, the experimental\nprotocol will be automatically inferred"
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_read_lengths
  doc: "Comma separated read lengths to be used,\nsuch as 28,29,30 If not provided,\
    \ it will be\nautomatically determined by assessing the\nmetagene periodicity"
  type: long
  inputBinding:
    prefix: --read_lengths
- id: in_p_site_offsets
  doc: "Comma separated P-site offsets for each read\nlength matching the read lengths\
    \ provided.\nIf not provided, reads from different read\nlengths will be automatically\
    \ aligned using\ncross-correlation"
  type: long
  inputBinding:
    prefix: --psite_offsets
- id: in_phase_score_cut_off
  doc: Phase score cutoff for determining active
  type: double
  inputBinding:
    prefix: --phase_score_cutoff
- id: in_min_valid_codons
  doc: "Minimum number of codons with non-zero reads\nfor determining active translation\n\
    [default: 5]"
  type: long
  inputBinding:
    prefix: --min_valid_codons
- id: in_min_reads_per_codon
  doc: "Minimum number of reads per codon for\ndetermining active translation  [default:\
    \ 0]"
  type: long
  inputBinding:
    prefix: --min_reads_per_codon
- id: in_min_valid_codons_ratio
  doc: "Minimum ratio of codons with non-zero reads\nto total codons for determining\
    \ active\ntranslation  [default: 0]"
  type: double
  inputBinding:
    prefix: --min_valid_codons_ratio
- id: in_min_read_density
  doc: "Minimum read density (total_reads/length)\nover an ORF total codons for determining\n\
    active translation  [default: 0.0]"
  type: double
  inputBinding:
    prefix: --min_read_density
- id: in_report_all
  doc: "Whether output all ORFs including those non-\ntranslating ones"
  type: boolean
  inputBinding:
    prefix: --report_all
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Prefix to output file  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- ribotricer
- detect-orfs
