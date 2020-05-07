class: CommandLineTool
id: preassembleFrgs.cwl
inputs:
- id: bank_report
  doc: '[options]  -b <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
- id: g
  doc: 'Write contig graphs as dot files (fullgraph.dot and Contig-*.dot) '
  type: boolean
  inputBinding:
    prefix: -g
- id: v
  doc: Verbose level
  type: string
  inputBinding:
    prefix: -v
- id: a
  doc: Output alignments instead of consensus messages
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: Output an AMOS message file
  type: boolean
  inputBinding:
    prefix: -A
- id: b
  doc: Input from AMOS bank
  type: boolean
  inputBinding:
    prefix: -b
- id: b
  doc: Output to an AMOS bank
  type: boolean
  inputBinding:
    prefix: -B
- id: c
  doc: Process contig messages
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: Input is Celera msg format, i.e., a .cgb or .cgw file
  type: boolean
  inputBinding:
    prefix: -C
- id: e
  doc: Set alignment error rate to <x>, e.g.,  -e 0.05  for 5% error
  type: string
  inputBinding:
    prefix: -e
- id: e
  doc: Get extra sequences to align from fasta file <fn>
  type: string
  inputBinding:
    prefix: -E
- id: f
  doc: Output consensus only in FASTA format
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: File containing list of IIDs to be processed
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: Use clear range in layout rather than readbank (-b only)
  type: boolean
  inputBinding:
    prefix: -L
- id: n
  doc: File containing list of EIDs (names) to be processed
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: Set minimum overlap bases to <n>
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: Input is simple contig format, i.e., UMD format using partial reads
  type: boolean
  inputBinding:
    prefix: -P
- id: s
  doc: Output EID seqnames for reads instead of IID ints
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Input is simple contig format, i.e., UMD format
  type: boolean
  inputBinding:
    prefix: -S
- id: t
  doc: Output in TIGR Assembler contig format
  type: boolean
  inputBinding:
    prefix: -T
- id: u
  doc: Process unitig messages
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: Set verbose level to <n>.  Higher produces more output
  type: string
  inputBinding:
    prefix: -v
- id: w
  doc: 'Set alignment wiggle to <n>. Default is 15. Use a smaller value for Solexa
    reads (Example: -w 2)'
  type: string
  inputBinding:
    prefix: -w
- id: x
  doc: Expel poor aligning reads from contigs and list them in file <fn>
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- preassembleFrgs
