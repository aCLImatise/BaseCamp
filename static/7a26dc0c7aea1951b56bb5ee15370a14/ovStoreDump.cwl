class: CommandLineTool
id: ovStoreDump.cwl
inputs:
- id: in_mandatory_path_sequence
  doc: mandatory path to a sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_mandatory_path_overlap
  doc: mandatory path to an overlap store
  type: File?
  inputBinding:
    prefix: -O
- id: in_overlaps
  doc: '[b[-e]]    dump overlaps (default)'
  type: boolean?
  inputBinding:
    prefix: -overlaps
- id: in_picture
  doc: '[b[-e]]    dump an ASCII picture of the overlaps relative to a read'
  type: boolean?
  inputBinding:
    prefix: -picture
- id: in_metadata
  doc: '[b[-3]]    tabular metadata, including the number of overlaps per read'
  type: boolean?
  inputBinding:
    prefix: -metadata
- id: in_counts
  doc: '[b[-e]]    the number of overlaps per read'
  type: boolean?
  inputBinding:
    prefix: -counts
- id: in_erate_len
  doc: '[b[-e]]    a histogram of overlap length vs error rate'
  type: boolean?
  inputBinding:
    prefix: -eratelen
- id: in_prefix
  doc: "* for -eratelen, write histogram to name.dat\nand also output a gnuplot script\
    \ to name.gp\n* for -binary, mandatory, write overlaps to name.ovb"
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_raw
  doc: uncorrected raw reads
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_obt
  doc: corrected reads
  type: boolean?
  inputBinding:
    prefix: -obt
- id: in_utg
  doc: trimmed reads
  type: boolean?
  inputBinding:
    prefix: -utg
- id: in_coords
  doc: as coordinates on each read (default)
  type: boolean?
  inputBinding:
    prefix: -coords
- id: in_hangs
  doc: as dovetail hangs
  type: boolean?
  inputBinding:
    prefix: -hangs
- id: in_unaligned
  doc: as unaligned regions on each read
  type: boolean?
  inputBinding:
    prefix: -unaligned
- id: in_paf
  doc: as miniasm Pairwise mApping Format
  type: boolean?
  inputBinding:
    prefix: -paf
- id: in_gfa
  doc: as Graphical Fragment Assembly format
  type: boolean?
  inputBinding:
    prefix: -gfa
- id: in_binary
  doc: as an overlapper output file (needs -prefix)
  type: File?
  inputBinding:
    prefix: -binary
- id: in_no_five_p
  doc: do not show oevrlaps off the 5' end of the A read
  type: boolean?
  inputBinding:
    prefix: -no5p
- id: in_no_three_p
  doc: do not show overlaps off the 3' end of the A read
  type: boolean?
  inputBinding:
    prefix: -no3p
- id: in_no_container
  doc: do not show overlaps that contain some other B read
  type: boolean?
  inputBinding:
    prefix: -nocontainer
- id: in_no_contained
  doc: do not show overlaps that are contained in some other B read
  type: boolean?
  inputBinding:
    prefix: -nocontained
- id: in_no_redundant
  doc: do not show overlaps where the A read ID is more than the B read ID
  type: boolean?
  inputBinding:
    prefix: -noredundant
- id: in_query
  doc: '[-b]         display only overlaps that are to these other B read IDs'
  type: string?
  inputBinding:
    prefix: -query
- id: in_erate
  doc: '[-max]     display only overlaps less than f fraction error'
  type: long?
  inputBinding:
    prefix: -erate
- id: in_length
  doc: '[-max]    display only overlaps between min and max bases long'
  type: long?
  inputBinding:
    prefix: -length
- id: in_bogart
  doc: annotate a picture with labels from bogart asm.best.edges output
  type: string?
  inputBinding:
    prefix: -bogart
- id: in_no_bogart_contained
  doc: do not show overlaps involving contained reads
  type: boolean?
  inputBinding:
    prefix: -nobogartcontained
- id: in_no_bogart_coverage_gap
  doc: not show overlaps involving coverage gap edges
  type: string?
  inputBinding:
    prefix: -nobogartcoveragegap
- id: in_no_bogart_lopsided
  doc: do not show overlaps involving lopsided edges
  type: boolean?
  inputBinding:
    prefix: -nobogartlopsided
- id: in_no_bogart_spur
  doc: do not show iverlaps involving spur reads
  type: boolean?
  inputBinding:
    prefix: -nobogartspur
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_binary
  doc: as an overlapper output file (needs -prefix)
  type: File?
  outputBinding:
    glob: $(inputs.in_binary)
hints: []
cwlVersion: v1.1
baseCommand:
- ovStoreDump
