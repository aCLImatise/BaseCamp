class: CommandLineTool
id: samsort.cwl
inputs:
- id: location
  doc: Order by chromosome then position (and then read name)
  type: string
  inputBinding:
    position: 0
- id: qname
  doc: Order by read (query) name then first/second ordering flags
  type: string
  inputBinding:
    position: 1
- id: b
  doc: Write output in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: Check whether input is already sorted
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: Compare records according to comparison function CMP [location]
  type: string
  inputBinding:
    prefix: -f
- id: m
  doc: Merge already-sorted files
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: Write output to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: s
  doc: Use SIZE amount of in-memory working space
  type: long
  inputBinding:
    prefix: -S
- id: t
  doc: Write temporary files to DIR [$TMPDIR or /tmp]
  type: string
  inputBinding:
    prefix: -T
- id: z
  doc: 'Compress output at level NUMBER [SAM: no compression; BAM: 6]'
  type: string
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- samsort
