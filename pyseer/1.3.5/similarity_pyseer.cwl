class: CommandLineTool
id: similarity_pyseer.cwl
inputs:
- id: samples
  doc: List of sample names to use
  type: string
  inputBinding:
    position: 0
- id: km_ers
  doc: Kmers file
  type: string
  inputBinding:
    prefix: --kmers
- id: vcf
  doc: VCF file. Will filter any non 'PASS' sites
  type: string
  inputBinding:
    prefix: --vcf
- id: pres
  doc: Presence/absence .Rtab matrix as produced by roary and piggy
  type: string
  inputBinding:
    prefix: --pres
- id: min_af
  doc: 'Minimum AF [Default: 0.01]'
  type: long
  inputBinding:
    prefix: --min-af
- id: max_af
  doc: 'Maximum AF [Default: 0.99]'
  type: long
  inputBinding:
    prefix: --max-af
- id: max_missing
  doc: 'Maximum missing (vcf/Rtab) [Default: 0.05]'
  type: long
  inputBinding:
    prefix: --max-missing
- id: uncompressed
  doc: 'Uncompressed kmers file [Default: gzipped]'
  type: boolean
  inputBinding:
    prefix: --uncompressed
outputs: []
cwlVersion: v1.1
baseCommand:
- similarity_pyseer
