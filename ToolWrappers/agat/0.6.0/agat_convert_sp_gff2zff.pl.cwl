class: CommandLineTool
id: agat_convert_sp_gff2zff.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_outfile
  doc: ", or -o\nFile prefix where will be written the results (e.g. outfile.ann\n\
    and outfile.dna). If no output file is specified, the output\nwill be written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_convert_sp_gfftwozffdotpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ", or -o\nFile prefix where will be written the results (e.g. outfile.ann\n\
    and outfile.dna). If no output file is specified, the output\nwill be written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2zff.pl
