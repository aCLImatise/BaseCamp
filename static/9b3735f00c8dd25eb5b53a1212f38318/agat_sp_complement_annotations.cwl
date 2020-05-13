class: CommandLineTool
id: agat_sp_complement_annotations.pl.cwl
inputs:
- id: ref
  doc: Input GTF/GFF file used as reference.
  type: string
  inputBinding:
    prefix: --ref
- id: add
  doc: 'Annotation(s) file you would like to use to complement the reference annotation.
    You can specify as much file you want like so: -a addfile1 -a addfile2 -a addfile3
    /!\ The order you provide these files matter. Once the reference file has been
    complemented by file1, this new annotation becomes the new reference that will
    be complemented by file2 etc. /!\ The result with -a addfile1 -a addfile2 will
    differ to the result from -a addfile2 -a addfile1. So, be aware of what you want
    if you use several addfiles.'
  type: string
  inputBinding:
    prefix: --add
- id: size_min
  doc: Option to keep the non-overlping gene only if the CDS size (in nucleotide)
    is over the minimum size defined. Default = 0 that means all of them are kept.
  type: string
  inputBinding:
    prefix: --size_min
- id: outfile
  doc: Output gff3 containing the reference annotation with all the non-overlapping
    newly added genes from addfiles.gff.
  type: string
  inputBinding:
    prefix: --outfile
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_complement_annotations.pl
