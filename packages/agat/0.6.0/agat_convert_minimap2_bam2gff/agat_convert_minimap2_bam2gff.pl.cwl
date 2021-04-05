class: CommandLineTool
id: agat_convert_minimap2_bam2gff.pl.cwl
inputs:
- id: in_input
  doc: "Input file in sam (.sam extension) or bam (.bam extension)\nformat."
  type: File?
  inputBinding:
    prefix: --input
- id: in_bam
  doc: To force to use the input file as sam file.
  type: File?
  inputBinding:
    prefix: --bam
- id: in_sam
  doc: To force to use the input file as sam file.
  type: File?
  inputBinding:
    prefix: --sam
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_convert_sp_minimap_two_bamtwogffdotpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
- id: in_path_dot
  doc: "Usage:\nagat_convert_sp_minimap2_bam2gff.pl -i infile.bam [ -o outfile ]\n\
    agat_convert_sp_minimap2_bam2gff.pl -i infile.sam [ -o outfile ]\nagat_convert_sp_minimap2_bam2gff.pl\
    \ --help"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_convert_minimap2_bam2gff.pl
