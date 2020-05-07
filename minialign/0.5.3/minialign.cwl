class: CommandLineTool
id: minialign.cwl
inputs:
- id: x
  doc: load preset params {pacbio,ont,ava} [ont]
  type: string
  inputBinding:
    prefix: -x
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: x
  doc: switch to all-versus-all alignment mode
  type: boolean
  inputBinding:
    prefix: -X
- id: v
  doc: show version number [0.5.2-unknown]
  type: boolean
  inputBinding:
    prefix: -v
- id: k
  doc: k-mer size [15]
  type: long
  inputBinding:
    prefix: -k
- id: w
  doc: minimizer window size [{-k}*2/3]
  type: long
  inputBinding:
    prefix: -w
- id: d
  doc: dump index to FILE []
  type: File
  inputBinding:
    prefix: -d
- id: l
  doc: load index from FILE [] (overriding -k and -w)
  type: File
  inputBinding:
    prefix: -l
- id: a
  doc: match award [1]
  type: long
  inputBinding:
    prefix: -a
- id: b
  doc: mismatch penalty [1]
  type: long
  inputBinding:
    prefix: -b
- id: p
  doc: gap open penalty [1]
  type: long
  inputBinding:
    prefix: -p
- id: q
  doc: gap extension penalty [1]
  type: long
  inputBinding:
    prefix: -q
- id: s
  doc: minimum alignment score [50]
  type: long
  inputBinding:
    prefix: -s
- id: m
  doc: minimum alignment score ratio [0.30]
  type: long
  inputBinding:
    prefix: -m
- id: o
  doc: output format {sam,maf,blast6,blasr1,blasr4,paf,mhap,falcon} [sam]
  type: string
  inputBinding:
    prefix: -O
- id: q
  doc: include quality string
  type: boolean
  inputBinding:
    prefix: -Q
- id: r
  doc: read group header line, like "@RG\tID:1" []
  type: string
  inputBinding:
    prefix: -R
- id: t
  doc: ',...   list of optional tags: {RG,AS,XS,NM,NH,IH,SA,MD} [] RG is also inferred
    from -R supp. records are omitted when SA tag is enabled'
  type: string
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- minialign
