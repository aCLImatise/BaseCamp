class: CommandLineTool
id: agat_sp_filter_by_mrnaBlastValue.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_blast
  doc: list of the all-vs-all blast file (outfmt 6, blastp)
  type: File?
  inputBinding:
    prefix: --blast
- id: in_outfile
  doc: "The name of the output file. By default the output is the\nstandard output."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_filter_by_mrna_blast_value_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "The name of the output file. By default the output is the\nstandard output."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_by_mrnaBlastValue.pl
