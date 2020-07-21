class: CommandLineTool
id: ../../../agat_convert_sp_gff2tsv.pl.cwl
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
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2tsv.pl
