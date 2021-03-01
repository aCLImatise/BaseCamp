class: CommandLineTool
id: filterGenemark.pl.cwl
inputs:
- id: in_introns
  doc: Corresponding intron file in gff format
  type: File?
  inputBinding:
    prefix: --introns
- id: in_genemark
  doc: File in gtf format
  type: File?
  inputBinding:
    prefix: --genemark
- id: in_output
  doc: "Specifies output file name. Default is 'genemark-input_file_name.c.gtf'\n\
    and 'genemark-input_file_name.f.good.gtf'\nand 'genemark-input_file_name.f.bad.gtf'\
    \ for filtered genes included and not included\nin intron file respectively"
  type: File?
  inputBinding:
    prefix: --output
- id: in_suppress
  doc: Suppress file output
  type: File?
  inputBinding:
    prefix: --suppress
- id: in_filter_out_short
  doc: "Filters intron containing genes as \"bad\" that have an RNA-Seq supported\
    \ intron\nwithin 2*maximal CDS length of the gene with at least 20% of average\
    \ intron\nmultiplicity for that gene (screens also downstream of stop, which either\
    \ indicates\nwrong reading frame, or a downstream UTR)"
  type: boolean?
  inputBinding:
    prefix: --filterOutShort
- id: in_genemark_dot_gtf
  doc: file in gtf format
  type: string
  inputBinding:
    position: 0
- id: in_introns_dot_gff
  doc: corresponding introns file in gff format
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suppress
  doc: Suppress file output
  type: File?
  outputBinding:
    glob: $(inputs.in_suppress)
hints: []
cwlVersion: v1.1
baseCommand:
- filterGenemark.pl
