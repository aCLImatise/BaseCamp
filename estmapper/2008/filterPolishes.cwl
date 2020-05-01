#!/usr/bin/env cwl-runner

baseCommand:
- filterPolishes
class: CommandLineTool
cwlVersion: v1.0
id: filterpolishes
inputs:
- doc: Report progress
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'Discard polishes below c% composite (default: 0).'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: 'Discard polishes below i% identity (default: 0).'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: 'Discard polishes below l identities (default: 0).'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: 'Discard polishes below e exons (default: 0).'
  id: min_exons
  inputBinding:
    prefix: -minexons
  type: string
- doc: 'Discard polishes above e exons (default: infinity).'
  id: max_exons
  inputBinding:
    prefix: -maxexons
  type: string
- doc: Discard polishes that are not from cDNA idx 'c'
  id: c
  inputBinding:
    prefix: -C
  type: string
- doc: Discard polishes that are not from genomic idx 'g'
  id: g
  inputBinding:
    prefix: -G
  type: string
- doc: Write saved polishes to the 'o' file (default == stdout).
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Don't write saved polishes.
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: Write discarded polishes to the 'o' file (default == stdout).
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: Don't write discarded polishes.
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: Write intractable and aborted polishes to the 'o' file.  By default these are
    silently discarded.
  id: j
  inputBinding:
    prefix: -j
  type: string
- doc: Filter out alignments to ourself -- if you did an all-to-all mapping of a set
    onto itself.  Deflines needed!
  id: self_hits
  inputBinding:
    prefix: -selfhits
  type: boolean
- doc: b Segregate polishes by genomic idx, for idx's between a and b inclusive. b-a
    must be less than 1024. Must be used with -o. Will create numerous files 'o.%05d'.
  id: segregate
  inputBinding:
    prefix: -segregate
  type: string
- doc: Strip out deflines.
  id: no_def_lines
  inputBinding:
    prefix: -nodeflines
  type: boolean
- doc: Strip out alignments.
  id: no_alignments
  inputBinding:
    prefix: -noalignments
  type: boolean
- doc: Write output in GFF3 format. All conditions must be met.
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
