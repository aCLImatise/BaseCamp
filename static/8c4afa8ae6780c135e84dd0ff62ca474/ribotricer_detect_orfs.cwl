class: CommandLineTool
id: ribotricer_detect_orfs.cwl
inputs:
- id: bam
  doc: Path to BAM file  [required]
  type: string
  inputBinding:
    prefix: --bam
- id: ribot_ricer_index
  doc: Path to the index file of ribotricer This file should be generated using ribotricer
    prepare-orfs  [required]
  type: string
  inputBinding:
    prefix: --ribotricer_index
- id: prefix
  doc: Prefix to output file  [required]
  type: string
  inputBinding:
    prefix: --prefix
- id: stranded
  doc: '[yes|no|reverse]     whether the data is from a strand-specific assay If not
    provided, the experimental protocol will be automatically inferred'
  type: boolean
  inputBinding:
    prefix: --stranded
- id: read_lengths
  doc: Comma separated read lengths to be used, such as 28,29,30 If not provided,
    it will be automatically determined by assessing the metagene periodicity
  type: string
  inputBinding:
    prefix: --read_lengths
- id: p_site_offsets
  doc: Comma separated P-site offsets for each read length matching the read lengths
    provided. If not provided, reads from different read lengths will be automatically
    aligned using cross-correlation
  type: string
  inputBinding:
    prefix: --psite_offsets
- id: phase_score_cut_off
  doc: 'Phase score cutoff for determining active translation  [default: 0.428571428571]'
  type: double
  inputBinding:
    prefix: --phase_score_cutoff
- id: min_valid_codons
  doc: 'Minimum number of codons with non-zero reads for determining active translation
    [default: 5]'
  type: long
  inputBinding:
    prefix: --min_valid_codons
- id: min_reads_per_codon
  doc: 'Minimum number of reads per codon for determining active translation  [default:
    0]'
  type: long
  inputBinding:
    prefix: --min_reads_per_codon
- id: min_valid_codons_ratio
  doc: 'Minimum ratio of codons with non-zero reads to total codons for determining
    active translation  [default: 0]'
  type: double
  inputBinding:
    prefix: --min_valid_codons_ratio
- id: min_read_density
  doc: 'Minimum read density (total_reads/length) over an ORF total codons for determining
    active translation  [default: 0.0]'
  type: double
  inputBinding:
    prefix: --min_read_density
- id: report_all
  doc: Whether output all ORFs including those non- translating ones
  type: boolean
  inputBinding:
    prefix: --report_all
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- detect-orfs
