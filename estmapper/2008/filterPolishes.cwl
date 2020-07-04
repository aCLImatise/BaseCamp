class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filterPolishes.cwl
inputs:
- id: verbose
  doc: Report progress
  type: boolean
  inputBinding:
    prefix: -verbose
- id: discard_polishes_c
  doc: 'Discard polishes below c% composite (default: 0).'
  type: string
  inputBinding:
    prefix: -c
- id: discard_polishes_i
  doc: 'Discard polishes below i% identity (default: 0).'
  type: string
  inputBinding:
    prefix: -i
- id: discard_polishes_l
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
- id: discard_polishes_cdna
  doc: Discard polishes that are not from cDNA idx 'c'
  type: string
  inputBinding:
    prefix: -C
- id: discard_polishes_genomic
  doc: Discard polishes that are not from genomic idx 'g'
  type: string
  inputBinding:
    prefix: -G
- id: write_saved_polishes_file
  doc: Write saved polishes to the 'o' file (default == stdout).
  type: string
  inputBinding:
    prefix: -o
- id: do_write_saved_polishes
  doc: Don't write saved polishes.
  type: boolean
  inputBinding:
    prefix: -O
- id: write_discarded_polishes_file
  doc: Write discarded polishes to the 'o' file (default == stdout).
  type: string
  inputBinding:
    prefix: -d
- id: do_write_discarded_polishes
  doc: Don't write discarded polishes.
  type: boolean
  inputBinding:
    prefix: -D
- id: write_intractable_aborted
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
- id: gff_three
  doc: Write output in GFF3 format. All conditions must be met.
  type: boolean
  inputBinding:
    prefix: -gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- filterPolishes
