class: CommandLineTool
id: agat_sp_add_start_and_stop.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: "Input fasta file. Needed to check that CDS sequences start by\nstart codon\
    \ and stop by stop codon."
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_codon
  doc: Codon table to use. [default 1]
  type: long?
  inputBinding:
    prefix: --codon
- id: in_output
  doc: Output gff file updated
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose_debugging_purpose
  doc: Verbose for debugging purpose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_add_start_and_stop_do_tpl_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output gff file updated
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_add_start_and_stop.pl
