class: CommandLineTool
id: gffread.cwl
inputs:
- id: e
  doc: expose (warn about) duplicate transcript IDs and other potential  problems
    with the given GFF/GTF records
  type: boolean
  inputBinding:
    prefix: -E
- id: d
  doc: decode url encoded characters within attributes
  type: boolean
  inputBinding:
    prefix: -D
- id: z
  doc: merge close exons into a single exon (for intron size<4)
  type: boolean
  inputBinding:
    prefix: -Z
- id: w
  doc: write a fasta file with spliced exons for each GFF transcript
  type: boolean
  inputBinding:
    prefix: -w
- id: x
  doc: write a fasta file with spliced CDS for each GFF transcript
  type: boolean
  inputBinding:
    prefix: -x
- id: w
  doc: for -w and -x options, also write for each fasta record the exon coordinates
    projected onto the spliced sequence
  type: boolean
  inputBinding:
    prefix: -W
- id: y
  doc: write a protein fasta file with the translation of CDS for each record
  type: boolean
  inputBinding:
    prefix: -y
- id: l
  doc: Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: '<chr_replace> is a reference (genomic) sequence replacement table with this
    format: <original_ref_ID> <new_ref_ID> GFF records on reference sequences that
    are not found among the <original_ref_ID> entries in this file will be filtered
    out'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: the "filtered" GFF records will be written to <outfile.gff> (use -o- for printing
    to stdout)
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: use <trackname> in the second column of each GFF output line
  type: boolean
  inputBinding:
    prefix: -t
- id: t
  doc: will output GTF format instead of GFF3
  type: string
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- gffread
