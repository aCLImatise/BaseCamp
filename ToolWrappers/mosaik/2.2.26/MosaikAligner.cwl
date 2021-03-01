class: CommandLineTool
id: MosaikAligner.cwl
inputs:
- id: in_in
  doc: the input read file
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: the output alignment file
  type: File?
  inputBinding:
    prefix: -out
- id: in_ibs
  doc: "enables colorspace to basespace conversion\nusing the supplied BASESPACE reference\n\
    archive"
  type: File?
  inputBinding:
    prefix: -ibs
- id: in_hs
  doc: 'hash size [4 - 32]. def: 15'
  type: long?
  inputBinding:
    prefix: -hs
- id: in_ls
  doc: enable local alignment search for PE reads
  type: string?
  inputBinding:
    prefix: -ls
- id: in_mhp
  doc: 'the maximum # of positions stored per seed'
  type: string?
  inputBinding:
    prefix: -mhp
- id: in_mhr
  doc: 'the maximum # of regions for aligning'
  type: string?
  inputBinding:
    prefix: -mhr
- id: in_min
  doc: 'the minimum # of aligned nucleotides'
  type: long?
  inputBinding:
    prefix: -min
- id: in_min_p
  doc: "the minimum alignment percentage [0.0 -\n1.0]"
  type: double?
  inputBinding:
    prefix: -minp
- id: in_mm
  doc: 'the # of mismatches allowed'
  type: string?
  inputBinding:
    prefix: -mm
- id: in_mmp
  doc: "the percentage of mismatches allowed [0.0\n- 1.0]"
  type: double?
  inputBinding:
    prefix: -mmp
- id: in_ncg
  doc: not count gaps as mismatches
  type: boolean?
  inputBinding:
    prefix: -ncg
- id: in_bw
  doc: "specifies the Smith-Waterman bandwidth.\ndef: 9"
  type: long?
  inputBinding:
    prefix: -bw
- id: in_lm
  doc: enable low-memory functions
  type: boolean?
  inputBinding:
    prefix: -lm
- id: in_kd
  doc: keeps the keys file on disk
  type: boolean?
  inputBinding:
    prefix: -kd
- id: in_pd
  doc: keeps the positions file on disk
  type: boolean?
  inputBinding:
    prefix: -pd
- id: in_sref
  doc: specifies the prefixes of special
  type: string?
  inputBinding:
    prefix: -sref
- id: in_omi
  doc: "output chromosome ids and positions of\nmultiply mapped alignments in the\n\
    multiple.bam"
  type: boolean?
  inputBinding:
    prefix: -omi
- id: in_om
  doc: "output complete multiply mapped alignments\nin the multiple.bam"
  type: boolean?
  inputBinding:
    prefix: -om
- id: in_zn
  doc: output zn tags
  type: boolean?
  inputBinding:
    prefix: -zn
- id: in_gop
  doc: 'the gap open penalty. def: 15.00'
  type: double?
  inputBinding:
    prefix: -gop
- id: in_gep
  doc: 'the gap extend penalty. def: 1.00'
  type: double?
  inputBinding:
    prefix: -gep
- id: in_h_gop
  doc: 'enables the homopolymer gop. def: 4.00'
  type: double?
  inputBinding:
    prefix: -hgop
- id: in_all
  doc: '-m <mode>                         alignment mode: [unique, all]. def: all'
  type: string
  inputBinding:
    position: 0
- id: in_references
  doc: -srefn <hashes>                   the maximum special hashes
  type: string
  inputBinding:
    position: 0
- id: in_one_zero_dot_zero_zero
  doc: '-mms <mismatch score>             the mismatch score. def: -9.00'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output alignment file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- MosaikAligner
