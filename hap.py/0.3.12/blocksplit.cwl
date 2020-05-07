class: CommandLineTool
id: blocksplit.cwl
inputs:
- id: input_file
  doc: The input VCF/BCF file(s) (use file:sample to  specify a sample)
  type: string
  inputBinding:
    prefix: --input-file
- id: o
  doc: '[ --output ] arg        Write a bed file giving the locations of  overlapping
    blocks (use - for stdout).'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: '[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  type: boolean
  inputBinding:
    prefix: -R
- id: t
  doc: '[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things outside the bed regions).'
  type: boolean
  inputBinding:
    prefix: -T
- id: l
  doc: '[ --location ] arg      The location / subset.'
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: '[ --limit-records ] arg Maximum number of records to process'
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: '[ --message-every ] arg Print a message every N records.'
  type: boolean
  inputBinding:
    prefix: -m
- id: w
  doc: '[ --window ] arg        Overlap window length.'
  type: boolean
  inputBinding:
    prefix: -w
- id: b
  doc: '[ --nblocks ] arg       Maximum number of blocks to break into (32).'
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: '[ --nvars ] arg         Minimum number of variants per block (100).'
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: verbose
  doc: Verbose output.
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- blocksplit
