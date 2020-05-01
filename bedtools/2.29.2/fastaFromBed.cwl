#!/usr/bin/env cwl-runner

baseCommand:
- fastaFromBed
class: CommandLineTool
cwlVersion: v1.0
id: fastafrombed
inputs:
- doc: Input FASTA file
  id: fi
  inputBinding:
    prefix: -fi
  type: boolean
- doc: Output file (opt., default is STDOUT
  id: fo
  inputBinding:
    prefix: -fo
  type: boolean
- doc: BED/GFF/VCF file of ranges to extract from -fi
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: Use the name field and coordinates for the FASTA header
  id: name
  inputBinding:
    prefix: -name
  type: boolean
- doc: +          (deprecated) Use the name field and coordinates for the FASTA header
  id: name
  inputBinding:
    prefix: -name
  type: boolean
- doc: Use the name field for the FASTA header
  id: name_only
  inputBinding:
    prefix: -nameOnly
  type: boolean
- doc: Given BED12 fmt., extract and concatenate the sequences from the BED "blocks"
    (e.g., exons)
  id: split
  inputBinding:
    prefix: -split
  type: boolean
- doc: Write output in TAB delimited format. - Default is FASTA format.
  id: tab
  inputBinding:
    prefix: -tab
  type: boolean
- doc: Force strandedness. If the feature occupies the antisense, strand, the sequence
    will be reverse complemented. - By default, strand information is ignored.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Use full fasta header. - By default, only the word before the first space or
    tab  is used.
  id: full_header
  inputBinding:
    prefix: -fullHeader
  type: boolean
