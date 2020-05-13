class: CommandLineTool
id: agat_sp_to_tabulated.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: ct
  doc: When the features doesn't have Parent/ID relationships, the parser will try
    to group features using a common/shared attribute (i.e. a locus tag.). By default
    locus_tag and gene_id. You can provide another specific common/shared attribute
    using this option.
  type: string
  inputBinding:
    prefix: --ct
- id: merge_loci
  doc: Merge loci parameter, default deactivated. You turn on the parameter if you
    want to merge loci into one locus when they overlap. (at CDS level for mRNA, at
    exon level for other level2 features. Strand has to be the same). Prokaryote can
    have overlaping loci so it should not use it for prokaryote annotation. In eukaryote,
    loci rarely overlap. Overlaps could be due to error in the file, mRNA can be merged
    under the same parent gene if you acticate the option.
  type: string
  inputBinding:
    prefix: --merge_loci
- id: o
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
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
- agat_sp_to_tabulated.pl
