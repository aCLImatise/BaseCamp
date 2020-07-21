class: CommandLineTool
id: ../../../bp_unflatten_seq.pl.cwl
inputs:
- id: input_file_input
  doc: '|input FILE input file (can also be specified as last argument)'
  type: boolean
  inputBinding:
    prefix: -i
- id: from
  doc: input format (defaults to genbank) probably doesn't make so much sense to use
    this for non-flat formats; ie other than embl/genbank
  type: string
  inputBinding:
    prefix: -from
- id: to
  doc: output format (defaults to asciitree) should really be a format that is nested
    SeqFeature aware; I think this is only asciitree, chadoxml and gff3
  type: string
  inputBinding:
    prefix: -to
- id: gff
  doc: with export to GFF3 format (pre-3 GFFs make no sense with unflattened sequences,
    as they have no set way of representing feature graphs)
  type: boolean
  inputBinding:
    prefix: -gff
- id: output_file_outfile
  doc: '|output FILE outfile defaults to STDOUT'
  type: boolean
  inputBinding:
    prefix: -o
- id: detail
  doc: show extra detail on features (asciitree mode only)
  type: boolean
  inputBinding:
    prefix: -detail
- id: ethresh_int_sets
  doc: '|ethresh INT sets the error threshold on unflattening by default this script
    will throw a wobbly if it encounters weird stuff in the genbank file - raise the
    error threshold to signal these to be ignored (and reported on STDERR)'
  type: boolean
  inputBinding:
    prefix: -e
- id: no_magic
  doc: suppress use_magic in unflattening (see Bio::SeqFeature::Tools::Unflattener
  type: boolean
  inputBinding:
    prefix: -nomagic
- id: no_typemap
  doc: suppress type mapping (see Bio::SeqFeature::Tools::TypeMapper
  type: boolean
  inputBinding:
    prefix: -notypemap
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_unflatten_seq.pl
