class: CommandLineTool
id: ovStoreDump.cwl
inputs:
- id: s
  doc: mandatory path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: mandatory path to an overlap store
  type: string
  inputBinding:
    prefix: -O
- id: overlaps
  doc: '[b[-e]]    dump overlaps (default)'
  type: boolean
  inputBinding:
    prefix: -overlaps
- id: picture
  doc: '[b[-e]]    dump an ASCII picture of the overlaps relative to a read'
  type: boolean
  inputBinding:
    prefix: -picture
- id: metadata
  doc: '[b[-3]]    tabular metadata, including the number of overlaps per read'
  type: boolean
  inputBinding:
    prefix: -metadata
- id: counts
  doc: '[b[-e]]    the number of overlaps per read'
  type: boolean
  inputBinding:
    prefix: -counts
- id: erate_len
  doc: '[b[-e]]    a histogram of overlap length vs error rate'
  type: boolean
  inputBinding:
    prefix: -eratelen
- id: prefix
  doc: '* for -eratelen, write histogram to name.dat and also output a gnuplot script
    to name.gp * for -binary, mandatory, write overlaps to name.ovb'
  type: string
  inputBinding:
    prefix: -prefix
- id: raw
  doc: uncorrected raw reads
  type: boolean
  inputBinding:
    prefix: -raw
- id: obt
  doc: corrected reads
  type: boolean
  inputBinding:
    prefix: -obt
- id: utg
  doc: trimmed reads
  type: boolean
  inputBinding:
    prefix: -utg
- id: coords
  doc: as coordinates on each read (default)
  type: boolean
  inputBinding:
    prefix: -coords
- id: hangs
  doc: as dovetail hangs
  type: boolean
  inputBinding:
    prefix: -hangs
- id: unaligned
  doc: as unaligned regions on each read
  type: boolean
  inputBinding:
    prefix: -unaligned
- id: paf
  doc: as miniasm Pairwise mApping Format
  type: boolean
  inputBinding:
    prefix: -paf
- id: gfa
  doc: as Graphical Fragment Assembly format
  type: boolean
  inputBinding:
    prefix: -gfa
- id: binary
  doc: as an overlapper output file (needs -prefix)
  type: boolean
  inputBinding:
    prefix: -binary
- id: no5p
  doc: do not show oevrlaps off the 5' end of the A read
  type: boolean
  inputBinding:
    prefix: -no5p
- id: no3p
  doc: do not show overlaps off the 3' end of the A read
  type: boolean
  inputBinding:
    prefix: -no3p
- id: no_container
  doc: do not show overlaps that contain some other B read
  type: boolean
  inputBinding:
    prefix: -nocontainer
- id: no_contained
  doc: do not show overlaps that are contained in some other B read
  type: boolean
  inputBinding:
    prefix: -nocontained
- id: no_redundant
  doc: do not show overlaps where the A read ID is more than the B read ID
  type: boolean
  inputBinding:
    prefix: -noredundant
- id: query
  doc: '[-b]         display only overlaps that are to these other B read IDs'
  type: string
  inputBinding:
    prefix: -query
- id: erate
  doc: '[-max]     display only overlaps less than f fraction error'
  type: long
  inputBinding:
    prefix: -erate
- id: length
  doc: '[-max]    display only overlaps between min and max bases long'
  type: long
  inputBinding:
    prefix: -length
- id: bogart
  doc: annotate a picture with labels from bogart asm.best.edges output
  type: string
  inputBinding:
    prefix: -bogart
- id: no_bogart_contained
  doc: do not show overlaps involving contained reads
  type: boolean
  inputBinding:
    prefix: -nobogartcontained
- id: no_bogart_coverage_gap
  doc: not show overlaps involving coverage gap edges
  type: string
  inputBinding:
    prefix: -nobogartcoveragegap
- id: no_bogart_lopsided
  doc: do not show overlaps involving lopsided edges
  type: boolean
  inputBinding:
    prefix: -nobogartlopsided
- id: no_bogart_spur
  doc: do not show iverlaps involving spur reads
  type: boolean
  inputBinding:
    prefix: -nobogartspur
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreDump
