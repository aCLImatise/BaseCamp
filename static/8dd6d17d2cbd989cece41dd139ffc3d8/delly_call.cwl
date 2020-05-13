class: CommandLineTool
id: delly_call.cwl
inputs:
- id: t
  doc: '[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,  BND,
    ALL]'
  type: boolean
  inputBinding:
    prefix: -t
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
  doc: '[ --map-qual ] arg (=1)        min. paired-end (PE) mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: r
  doc: '[ --qual-tra ] arg (=20)       min. PE quality for translocation'
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: '[ --mad-cutoff ] arg (=9)      insert size cutoff, median+s*MAD (deletions
    only)'
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: '[ --minclip ] arg (=25)        min. clipping length'
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: '[ --minrefsep ] arg (=25)      min. reference separation'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --maxreadsep ] arg (=40)     max. read separation'
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
  doc: '[ --dump ] arg                 gzipped output file for SV-reads (optional)'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- call
