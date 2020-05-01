#!/usr/bin/env cwl-runner

baseCommand:
- compare-out-to-gff.prl
class: CommandLineTool
cwlVersion: v1.0
id: compare-out-to-gff.prl
inputs:
- doc: '> lib.ref'
  id: cat
  inputBinding:
    prefix: --cat
  type: string
- doc: RepeatMasker instances in either .cat format or .out format (prefer .out)
  id: cat
  inputBinding:
    prefix: --cat
  type: boolean
- doc: A GFF-formatted file of features. More than one file may be specified with
    multiple --gff options.
  id: gff
  inputBinding:
    prefix: --gff
  type: boolean
- doc: A fasta formatted file. If this is given, then sequences that are under (over)
    the overlap threshold will be in the output. This is a sequence filter.
  id: f
  inputBinding:
    prefix: --f
  type: boolean
- doc: The maximum (minimum) amount of overlap tolerated by any one type of repeat.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: boolean
- doc: Determines if the threshold is a minimum or a maximum (defaults to maximum;
    including --over makes it a minimum)
  id: over
  inputBinding:
    prefix: --over
  type: boolean
- doc: 'Determines how the overlap calculation is done. If this is not specified,
    the overlap is calculated by bases: if 40 bases of a repeat element overlaps a
    feature in one of the GFF files, it is counted as 40 bases. The sum is taken over
    all features and all repeats of a given type and divided by the total length of
    the repeat. If --instances is specified, the "overlap" is considered to be the
    number of instances of a given type that overlap any feature, divided by the total
    number of instances of that type.'
  id: instances
  inputBinding:
    prefix: --instances
  type: boolean
