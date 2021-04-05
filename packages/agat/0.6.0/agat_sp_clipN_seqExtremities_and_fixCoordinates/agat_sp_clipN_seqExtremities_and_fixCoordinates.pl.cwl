class: CommandLineTool
id: agat_sp_clipN_seqExtremities_and_fixCoordinates.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: Input fasta file.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_of
  doc: "Output fixed fasta file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  inputBinding:
    prefix: --of
- id: in_og
  doc: "Output fixed GFF file. If no output file is specified, the\noutput will be\
    \ written to STDOUT"
  type: File?
  inputBinding:
    prefix: --og
- id: in_agat_sp_clip_n_seq_extremities_and_fix_coordinates_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_consistent
  doc: "Usage:\nagat_sp_clipN_seqExtremities_and_fixCoordinates.pl -g infile.gff -f\
    \ infile.fasta  [ -o outfile ]\nagat_sp_clipN_seqExtremities_and_fixCoordinates.pl\
    \ --help"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_of
  doc: "Output fixed fasta file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_of)
- id: out_og
  doc: "Output fixed GFF file. If no output file is specified, the\noutput will be\
    \ written to STDOUT"
  type: File?
  outputBinding:
    glob: $(inputs.in_og)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_clipN_seqExtremities_and_fixCoordinates.pl
