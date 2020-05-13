class: CommandLineTool
id: agat_convert_sp_gxf2gxf.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: ct
  doc: When the features do not have Parent/ID relationships, the parser will try
    to group features using a common/shared attribute (i.e. a locus tag.). By default
    locus_tag and gene_id. You can provide another specific common/shared attribute
    using this option.
  type: string
  inputBinding:
    prefix: --ct
- id: expose
  doc: 'If you want to see, add or modified the feature relationships you will have
    to use this option. It will copy past in you working directory the json files
    used to define the relation between feature types and their level organisation.
    Typical level organisation: Level1 => gene; Level2 => mRNA; level3 => exon,cds,utrs
    If you get warning from the Omniscient parser that a feature relationship is not
    defined, you can provide information about it within the exposed json files. Indeed,
    if the json files exists in your working directory, they will be used by default.'
  type: string
  inputBinding:
    prefix: --expose
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
- id: v
  doc: Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are
    increasing verbosity.
  type: boolean
  inputBinding:
    prefix: -v
- id: no_check
  doc: To deacticate all check that can be performed by the parser (e.g fixing UTR,
    exon, coordinates etc...)
  type: string
  inputBinding:
    prefix: --no_check
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: gff_version_input
  doc: "If you don't want to use the autodection of the gff/gft version you give as\
    \ input, you can force the tool to use the parser of the gff version you decide\
    \ to use: 1,2,2.5 or 3. Remind: 2.5 is suposed to be gtf."
  type: string
  inputBinding:
    prefix: --gff_version_input
- id: gff_version_output
  doc: "If you don't want to use the autodection of the gff/gft version you give as\
    \ input, you can force the tool to use the parser of the gff version you decide\
    \ to use: 1,2,2.5 or 3. Remind: 2.5 is suposed to be gtf."
  type: string
  inputBinding:
    prefix: --gff_version_output
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
- agat_convert_sp_gxf2gxf.pl
