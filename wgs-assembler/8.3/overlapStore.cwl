class: CommandLineTool
id: overlapStore.cwl
inputs:
- id: d
  doc: dump a store
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: report the a,b overlap, if it exists.
  type: boolean
  inputBinding:
    prefix: -q
- id: p
  doc: dump a picture of overlaps to fragment 'iid', using clear region 'clr'.
  type: boolean
  inputBinding:
    prefix: -p
- id: g
  doc: estimate genome length
  type: boolean
  inputBinding:
    prefix: -G
- id: b
  doc: Dump the store as binary, suitable for input to create a new store.
  type: boolean
  inputBinding:
    prefix: -B
- id: e
  doc: Dump only overlaps <= erate error.
  type: string
  inputBinding:
    prefix: -E
- id: l
  doc: Dump only overlaps that are larger than L bases (only for -p picture mode).
  type: long
  inputBinding:
    prefix: -L
- id: d5
  doc: Dump only overlaps off the 5' end of the A frag.
  type: boolean
  inputBinding:
    prefix: -d5
- id: d3
  doc: Dump only overlaps off the 3' end of the A frag.
  type: boolean
  inputBinding:
    prefix: -d3
- id: dc
  doc: Dump only overlaps that are contained in the A frag (B contained in A).
  type: boolean
  inputBinding:
    prefix: -dC
- id: dc
  doc: Dump only overlaps that are containing the A frag (A contained in B).
  type: boolean
  inputBinding:
    prefix: -dc
- id: b
  doc: Start dumping at 'beginIID'.
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: Stop dumping after 'endIID'.
  type: string
  inputBinding:
    prefix: -e
- id: v
  doc: Report statistics (to stderr) on some dumps (-d).
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: biid storeName If an overlap between fragments 'aiid' and 'biid' exists, it
    is printed.
  type: string
  inputBinding:
    prefix: -q
- id: p
  doc: storeName gkpStore clr clr is usually OBTINITIAL for obtStore. clr is usually
    OBTCHIMERA for ovlStore when OBT is used. clr is usually CLR        for ovlStore
    when OBT is not used.
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapStore
