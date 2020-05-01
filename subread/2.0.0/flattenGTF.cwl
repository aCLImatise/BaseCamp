#!/usr/bin/env cwl-runner

baseCommand:
- flattenGTF
class: CommandLineTool
cwlVersion: v1.0
id: flattengtf
inputs:
- doc: Name of an annotation file in GTF/GFF format.
  id: a
  inputBinding:
    prefix: -a
  type: File
- doc: Name of output file.
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: Specify feature type in a GTF annotation. 'exon' by default. Features with
    the specified feature type are extracted from the annotation for processing.
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Specify attribute type in GTF annotation. 'gene_id' by default. This attribute
    type is used to group features into meta- features.
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Merging overlapping exons into multiple non-overlapping exons but all the edges
    are kept.
  id: c
  inputBinding:
    prefix: -C
  type: boolean
