class: CommandLineTool
id: LinkFragments.py.cwl
inputs:
- id: f
  doc: '[FRAGMENTS], --fragments [FRAGMENTS] file with unlinked hapcut2 fragments
    (generate using --10X 1 option in extractHAIRS)'
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: '[VCF], --VCF [VCF] vcf file for phasing'
  type: boolean
  inputBinding:
    prefix: -v
- id: b
  doc: '[BAM_FILE], --bam_file [BAM_FILE] bam file with barcoded reads'
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: '[OUTFILE], --outfile [OUTFILE] output file with linked fragments'
  type: boolean
  inputBinding:
    prefix: -o
- id: d
  doc: '[DISTANCE], --distance [DISTANCE] distance in base pairs that delineates separate
    10X molecules'
  type: boolean
  inputBinding:
    prefix: -d
- id: single_snp_frags
  doc: whether to keep fragments overlapping only one SNP
  type: boolean
  inputBinding:
    prefix: --single_SNP_frags
outputs: []
cwlVersion: v1.1
baseCommand:
- LinkFragments.py
