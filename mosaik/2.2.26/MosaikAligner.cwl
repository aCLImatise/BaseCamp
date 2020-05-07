class: CommandLineTool
id: MosaikAligner.cwl
inputs:
- id: m
  doc: 'alignment mode: [unique, all]. def: all'
  type: string
  inputBinding:
    prefix: -m
- id: hs
  doc: 'hash size [4 - 32]. def: 15'
  type: string
  inputBinding:
    prefix: -hs
- id: ls
  doc: enable local alignment search for PE reads
  type: string
  inputBinding:
    prefix: -ls
- id: mhp
  doc: 'the maximum # of positions stored per seed'
  type: string
  inputBinding:
    prefix: -mhp
- id: mhr
  doc: 'the maximum # of regions for aligning'
  type: string
  inputBinding:
    prefix: -mhr
- id: min
  doc: 'the minimum # of aligned nucleotides'
  type: string
  inputBinding:
    prefix: -min
- id: min_p
  doc: the minimum alignment percentage [0.0 - 1.0]
  type: string
  inputBinding:
    prefix: -minp
- id: mm
  doc: 'the # of mismatches allowed'
  type: string
  inputBinding:
    prefix: -mm
- id: mmp
  doc: the percentage of mismatches allowed [0.0 - 1.0]
  type: string
  inputBinding:
    prefix: -mmp
- id: ncg
  doc: not count gaps as mismatches
  type: boolean
  inputBinding:
    prefix: -ncg
- id: bw
  doc: 'specifies the Smith-Waterman bandwidth. def: 9'
  type: string
  inputBinding:
    prefix: -bw
- id: lm
  doc: enable low-memory functions
  type: boolean
  inputBinding:
    prefix: -lm
- id: kd
  doc: keeps the keys file on disk
  type: boolean
  inputBinding:
    prefix: -kd
- id: pd
  doc: keeps the positions file on disk
  type: boolean
  inputBinding:
    prefix: -pd
- id: sref
  doc: specifies the prefixes of special references
  type: string
  inputBinding:
    prefix: -sref
- id: s_refn
  doc: the maximum special hashes
  type: string
  inputBinding:
    prefix: -srefn
- id: omi
  doc: output chromosome ids and positions of multiply mapped alignments in the multiple.bam
  type: boolean
  inputBinding:
    prefix: -omi
- id: om
  doc: output complete multiply mapped alignments in the multiple.bam
  type: boolean
  inputBinding:
    prefix: -om
- id: zn
  doc: output zn tags
  type: boolean
  inputBinding:
    prefix: -zn
- id: mms
  doc: 'the mismatch score. def: -9.00'
  type: string
  inputBinding:
    prefix: -mms
- id: gop
  doc: 'the gap open penalty. def: 15.00'
  type: string
  inputBinding:
    prefix: -gop
- id: gep
  doc: 'the gap extend penalty. def: 1.00'
  type: string
  inputBinding:
    prefix: -gep
- id: h_gop
  doc: 'enables the homopolymer gop. def: 4.00'
  type: string
  inputBinding:
    prefix: -hgop
outputs: []
cwlVersion: v1.1
baseCommand:
- MosaikAligner
