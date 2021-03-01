class: CommandLineTool
id: agat_sp_filter_by_locus_distance.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_dist
  doc: "The minimum inter-loci distance to allow. No default (will not\napply filter\
    \ by default)."
  type: string?
  inputBinding:
    prefix: --dist
- id: in_add_flag
  doc: "Instead of filter the result into two output files, write only\none and add\
    \ the flag <low_dist> in the gff.(tag = Lvalue or tag\n= Rvalue where L is left\
    \ and R right and the value is the\ndistance with accordingle the left or right\
    \ locus)"
  type: string?
  inputBinding:
    prefix: --add_flag
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_verbose_option_make
  doc: "Verbose option, make it easier to follow what is going on for\ndebugging purpose."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_filter_by_locus_distance_do_tpl
  doc: 'Description:'
  type: string
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
- agat_sp_filter_by_locus_distance.pl
