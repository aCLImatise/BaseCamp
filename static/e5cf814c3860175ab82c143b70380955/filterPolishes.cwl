class: CommandLineTool
id: filterPolishes.cwl
inputs:
- id: verbose
  doc: Report progress
  type: boolean
  inputBinding:
    prefix: -verbose
- id: c
  doc: 'Discard polishes below c% composite (default: 0).'
  type: string
  inputBinding:
    prefix: -c
- id: i
  doc: 'Discard polishes below i% identity (default: 0).'
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: 'Discard polishes below l identities (default: 0).'
  type: string
  inputBinding:
    prefix: -l
- id: min_exons
  doc: 'Discard polishes below e exons (default: 0).'
  type: string
  inputBinding:
    prefix: -minexons
- id: max_exons
  doc: 'Discard polishes above e exons (default: infinity).'
  type: string
  inputBinding:
    prefix: -maxexons
- id: c
  doc: Discard polishes that are not from cDNA idx 'c'
  type: string
  inputBinding:
    prefix: -C
- id: g
  doc: Discard polishes that are not from genomic idx 'g'
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: Write saved polishes to the 'o' file (default == stdout).
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: Don't write saved polishes.
  type: boolean
  inputBinding:
    prefix: -O
- id: d
  doc: Write discarded polishes to the 'o' file (default == stdout).
  type: string
  inputBinding:
    prefix: -d
- id: d
  doc: Don't write discarded polishes.
  type: boolean
  inputBinding:
    prefix: -D
- id: j
  doc: Write intractable and aborted polishes to the 'o' file.  By default these are
    silently discarded.
  type: string
  inputBinding:
    prefix: -j
- id: self_hits
  doc: Filter out alignments to ourself -- if you did an all-to-all mapping of a set
    onto itself.  Deflines needed!
  type: boolean
  inputBinding:
    prefix: -selfhits
- id: segregate
  doc: b Segregate polishes by genomic idx, for idx's between a and b inclusive. b-a
    must be less than 1024. Must be used with -o. Will create numerous files 'o.%05d'.
  type: string
  inputBinding:
    prefix: -segregate
- id: no_def_lines
  doc: Strip out deflines.
  type: boolean
  inputBinding:
    prefix: -nodeflines
- id: no_alignments
  doc: Strip out alignments.
  type: boolean
  inputBinding:
    prefix: -noalignments
- id: gff3
  doc: Write output in GFF3 format. All conditions must be met.
  type: boolean
  inputBinding:
    prefix: -gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- filterPolishes
