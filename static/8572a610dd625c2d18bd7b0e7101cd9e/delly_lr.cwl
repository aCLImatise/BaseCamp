class: CommandLineTool
id: delly_lr.cwl
inputs:
- id: t
  doc: '[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,  BND,
    ALL]'
  type: boolean
  inputBinding:
    prefix: -t
- id: y
  doc: '[ --technology ] arg (=ont)    seq. technology [pb, ont]'
  type: boolean
  inputBinding:
    prefix: -y
- id: g
  doc: '[ --genome ] arg               genome fasta file'
  type: boolean
  inputBinding:
    prefix: -g
- id: x
  doc: '[ --exclude ] arg              file with regions to exclude'
  type: boolean
  inputBinding:
    prefix: -x
- id: o
  doc: '[ --outfile ] arg (="sv.bcf")  SV BCF output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: q
  doc: '[ --mapqual ] arg (=10)        min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: c
  doc: '[ --minclip ] arg (=25)        min. clipping length'
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: '[ --minrefsep ] arg (=30)      min. reference separation'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --maxreadsep ] arg (=75)     max. read separation'
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: '[ --vcffile ] arg              input VCF/BCF file for genotyping'
  type: boolean
  inputBinding:
    prefix: -v
- id: u
  doc: '[ --geno-qual ] arg (=5)       min. mapping quality for genotyping'
  type: boolean
  inputBinding:
    prefix: -u
- id: d
  doc: '[ --dump ] arg                 gzipped output file for SV-reads'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- lr
