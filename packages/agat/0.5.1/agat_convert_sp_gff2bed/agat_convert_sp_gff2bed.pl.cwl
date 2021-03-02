class: CommandLineTool
id: agat_convert_sp_gff2bed.pl.cwl
inputs:
- id: in_gff
  doc: Input GFF3 file that will be read
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_sub
  doc: "Define the subfeature (level3, e.g exon,cds,utr,etc...) to\nreport as blocks\
    \ in the bed output. Defaut: exon."
  type: boolean?
  inputBinding:
    prefix: --sub
- id: in_outfile
  doc: ", or -o\nFile where will be written the result. If no output file is\nspecified,\
    \ the output will be written to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_convert_sp_gff_two_bed_do_tpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
- id: in_block_count_dot
  doc: "Usage:\nagat_convert_sp_gff2bed.pl --gff file.gff  [ -o outfile ]\nagat_convert_sp_gff2bed.pl\
    \ --help"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ", or -o\nFile where will be written the result. If no output file is\nspecified,\
    \ the output will be written to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2bed.pl
