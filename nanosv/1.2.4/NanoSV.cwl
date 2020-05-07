class: CommandLineTool
id: NanoSV.cwl
inputs:
- id: bam
  doc: /path/to/file.bam
  type: string
  inputBinding:
    position: 0
- id: threads
  doc: 'Number of threads [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
- id: samba_mba
  doc: 'Give the full path to the sambamba or samtools executable [default: sambamba
    ]'
  type: string
  inputBinding:
    prefix: --sambamba
- id: config
  doc: 'Give the full path to your own ini file [ default: config.ini ]'
  type: string
  inputBinding:
    prefix: --config
- id: bed
  doc: 'Give the full path to your own bed file, used for coverage depth calculations
    [default: human_hg19.bed ]'
  type: string
  inputBinding:
    prefix: --bed
- id: output
  doc: 'Give the full path to the output vcf file [default: <stdout> ]'
  type: string
  inputBinding:
    prefix: --output
- id: snp_file
  doc: 'Give full path to the SNP variant file for phasing. Supporting file formats:
    BED and VCF'
  type: string
  inputBinding:
    prefix: --snp_file
outputs: []
cwlVersion: v1.1
baseCommand:
- NanoSV
