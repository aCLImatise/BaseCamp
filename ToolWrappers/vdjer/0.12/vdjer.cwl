class: CommandLineTool
id: vdjer.cwl
inputs:
- id: in_ref_dir
  doc: </path/to/vdjer/ref/dir>
  type: File?
  inputBinding:
    prefix: --ref-dir
- id: in_mf
  doc: '<min node frequency (default: 3)>'
  type: boolean?
  inputBinding:
    prefix: --mf
- id: in_mq
  doc: '<min base quality (default: 90)>'
  type: boolean?
  inputBinding:
    prefix: --mq
- id: in_mcs
  doc: '<min contig score (default: -5)'
  type: boolean?
  inputBinding:
    prefix: --mcs
- id: in_threads_default
  doc: '<threads (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --t
- id: in_am
  doc: '<anchor mismatches (default: 4)'
  type: boolean?
  inputBinding:
    prefix: --am
- id: in_miw
  doc: <conserved J amino acid (W|F)
  type: long?
  inputBinding:
    prefix: --miw
- id: in_ws
  doc: '<window span (default: 486)'
  type: boolean?
  inputBinding:
    prefix: --ws
- id: in_j_ext
  doc: '<J extension (default: 162)'
  type: boolean?
  inputBinding:
    prefix: --jext
- id: in_vr
  doc: <V region locus (chr:start-stop)>
  type: boolean?
  inputBinding:
    prefix: --vr
- id: in_ins
  doc: '<read filter floor (default: 1)'
  type: long?
  inputBinding:
    prefix: --ins
- id: in_kmer_size_default
  doc: '<kmer size (default: 35)>'
  type: boolean?
  inputBinding:
    prefix: --k
- id: in_vk
  doc: '<vregion kmer size (default: 15)>'
  type: boolean?
  inputBinding:
    prefix: --vk
- id: in_mrs
  doc: '<min source node homology score (default: 30)'
  type: boolean?
  inputBinding:
    prefix: --mrs
- id: in_rs
  doc: '<read span distance (default: 35)>'
  type: boolean?
  inputBinding:
    prefix: --rs
- id: in_ms
  doc: '<mate span distance (default: 48)>'
  type: boolean?
  inputBinding:
    prefix: --ms
- id: in_e_zero
  doc: '<start position for contig filtering (default: 52)>'
  type: boolean?
  inputBinding:
    prefix: --e0
- id: in_e_one
  doc: '<stop position for contig filtering (default: 411)>'
  type: boolean?
  inputBinding:
    prefix: --e1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vdjer
