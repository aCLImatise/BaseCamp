class: CommandLineTool
id: compare_out_to_gff.prl.cwl
inputs:
- id: cat
  doc: '> lib.ref'
  type: string
  inputBinding:
    prefix: --cat
- id: cat
  doc: RepeatMasker instances in either .cat format or .out format (prefer .out)
  type: boolean
  inputBinding:
    prefix: --cat
- id: gff
  doc: A GFF-formatted file of features. More than one file may be specified with
    multiple --gff options.
  type: boolean
  inputBinding:
    prefix: --gff
- id: f
  doc: A fasta formatted file. If this is given, then sequences that are under (over)
    the overlap threshold will be in the output. This is a sequence filter.
  type: boolean
  inputBinding:
    prefix: --f
- id: threshold
  doc: The maximum (minimum) amount of overlap tolerated by any one type of repeat.
  type: boolean
  inputBinding:
    prefix: --threshold
- id: over
  doc: Determines if the threshold is a minimum or a maximum (defaults to maximum;
    including --over makes it a minimum)
  type: boolean
  inputBinding:
    prefix: --over
- id: instances
  doc: 'Determines how the overlap calculation is done. If this is not specified,
    the overlap is calculated by bases: if 40 bases of a repeat element overlaps a
    feature in one of the GFF files, it is counted as 40 bases. The sum is taken over
    all features and all repeats of a given type and divided by the total length of
    the repeat. If --instances is specified, the "overlap" is considered to be the
    number of instances of a given type that overlap any feature, divided by the total
    number of instances of that type.'
  type: boolean
  inputBinding:
    prefix: --instances
outputs: []
cwlVersion: v1.1
baseCommand:
- compare-out-to-gff.prl
