class: CommandLineTool
id: agat_convert_bed2gff.pl.cwl
inputs:
- id: in_bed
  doc: Input bed file that will be convert.
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_source
  doc: "The source informs about the tool used to produce the data and\nis stored\
    \ in 2nd field of a gff file. Example:\nStringtie,Maker,Augustus,etc. [default:\
    \ data]"
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_primary_tag
  doc: "The primary_tag corresponf to the data type and is stored in 3rd\nfield of\
    \ a gff file. Example: gene,mRNA,CDS,etc. [default: gene]"
  type: boolean?
  inputBinding:
    prefix: --primary_tag
- id: in_inflate_off
  doc: "By default we inflate the block fields (blockCount, blockSizes,\nblockStarts)\
    \ to create subfeatures of the main feature\n(primary_tag). Type of subfeature\
    \ created based on the\ninflate_type parameter. If you don't want this inflating\n\
    behaviour you can deactivate it by using the option\n--inflate_off."
  type: boolean?
  inputBinding:
    prefix: --inflate_off
- id: in_inflate_type
  doc: "Feature type (3rd column in gff) created when inflate parameter\nactivated\
    \ [default: exon]."
  type: boolean?
  inputBinding:
    prefix: --inflate_type
- id: in_verbose
  doc: add verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_convert_bed_two_gff_do_tpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- agat_convert_bed2gff.pl
