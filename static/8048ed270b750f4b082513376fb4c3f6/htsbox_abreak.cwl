class: CommandLineTool
id: htsbox_abreak.cwl
inputs:
- id: b
  doc: assume the input is BAM (default is SAM)
  type: boolean
  inputBinding:
    prefix: -b
- id: l
  doc: exclude contigs shorter than INT [150]
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: exclude alignemnts with score less than INT [0]
  type: long
  inputBinding:
    prefix: -s
- id: q
  doc: exclude alignments with mapQ below INT [10]
  type: long
  inputBinding:
    prefix: -q
- id: d
  doc: filter calls with min flanking depth below INT in VCF [10]
  type: long
  inputBinding:
    prefix: -d
- id: p
  doc: print break points
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: VCF output (force -p)
  type: boolean
  inputBinding:
    prefix: -c
- id: u
  doc: unitig SV calling mode (-pq40 -s80)
  type: boolean
  inputBinding:
    prefix: -u
- id: f
  doc: faidx indexed reference fasta (for -u)
  type: File
  inputBinding:
    prefix: -f
- id: m
  doc: exclude aln overlapping another long aln by FLOAT fraction (effective w/o -p)
    [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: g
  doc: join alignments separated by a gap shorter than INT bp (effective w/o -p) [500]
  type: long
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- abreak
