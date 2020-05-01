#!/usr/bin/env cwl-runner

baseCommand:
- gffread
class: CommandLineTool
cwlVersion: v1.0
id: gffread
inputs:
- doc: expose (warn about) duplicate transcript IDs and other potential  problems
    with the given GFF/GTF records
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: decode url encoded characters within attributes
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: merge close exons into a single exon (for intron size<4)
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: write a fasta file with spliced exons for each GFF transcript
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: write a fasta file with spliced CDS for each GFF transcript
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: for -w and -x options, also write for each fasta record the exon coordinates
    projected onto the spliced sequence
  id: w
  inputBinding:
    prefix: -W
  type: boolean
- doc: write a protein fasta file with the translation of CDS for each record
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '<chr_replace> is a reference (genomic) sequence replacement table with this
    format: <original_ref_ID> <new_ref_ID> GFF records on reference sequences that
    are not found among the <original_ref_ID> entries in this file will be filtered
    out'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: the "filtered" GFF records will be written to <outfile.gff> (use -o- for printing
    to stdout)
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: use <trackname> in the second column of each GFF output line
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: will output GTF format instead of GFF3
  id: t
  inputBinding:
    prefix: -T
  type: string
