class: CommandLineTool
id: ../../../LinkFragments.py.cwl
inputs:
- id: file_unlinked_hapcut
  doc: '[FRAGMENTS], --fragments [FRAGMENTS] file with unlinked hapcut2 fragments
    (generate using --10X 1 option in extractHAIRS)'
  type: boolean
  inputBinding:
    prefix: -f
- id: vcf_file_phasing
  doc: '[VCF], --VCF [VCF] vcf file for phasing'
  type: boolean
  inputBinding:
    prefix: -v
- id: bam_file_barcoded
  doc: '[BAM_FILE], --bam_file [BAM_FILE] bam file with barcoded reads'
  type: boolean
  inputBinding:
    prefix: -b
- id: output_file_linked
  doc: '[OUTFILE], --outfile [OUTFILE] output file with linked fragments'
  type: boolean
  inputBinding:
    prefix: -o
- id: distance_separate_molecules
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
- id: fragments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- LinkFragments.py
