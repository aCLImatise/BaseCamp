class: CommandLineTool
id: agat_sp_flag_premature_stop_codons.pl.cwl
inputs:
- id: in_ref_file
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: -reffile
- id: in_fast_a
  doc: Imput fasta file.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_codon
  doc: Codon table to use. [default 1]
  type: long?
  inputBinding:
    prefix: --codon
- id: in_output
  doc: Output gff3 file where the result will be printed.
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sp_flag_premature_stop_codons_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output gff3 file where the result will be printed.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_flag_premature_stop_codons.pl
