class: CommandLineTool
id: similarity_pyseer.cwl
inputs:
- id: in_km_ers
  doc: Kmers file
  type: File
  inputBinding:
    prefix: --kmers
- id: in_vcf
  doc: VCF file. Will filter any non 'PASS' sites
  type: File
  inputBinding:
    prefix: --vcf
- id: in_pres
  doc: Presence/absence .Rtab matrix as produced by roary and
  type: string
  inputBinding:
    prefix: --pres
- id: in_max_af
  doc: 'Maximum AF [Default: 0.99]'
  type: long
  inputBinding:
    prefix: --max-af
- id: in_max_missing
  doc: 'Maximum missing (vcf/Rtab) [Default: 0.05]'
  type: long
  inputBinding:
    prefix: --max-missing
- id: in_uncompressed
  doc: 'Uncompressed kmers file [Default: gzipped]'
  type: boolean
  inputBinding:
    prefix: --uncompressed
- id: in_piggy
  doc: '--min-af MIN_AF       Minimum AF [Default: 0.01]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- similarity_pyseer
