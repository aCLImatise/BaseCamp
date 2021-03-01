class: CommandLineTool
id: cthreepo.cwl
inputs:
- id: in_in_file
  doc: input file
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: output file
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_map_file
  doc: NCBI style assembly_report file for mapping
  type: File?
  inputBinding:
    prefix: --mapfile
- id: in_accn
  doc: NCBI Assembly Accession with version
  type: string?
  inputBinding:
    prefix: --accn
- id: in_id_from
  doc: "seq-id format in the input file; can be `ens`, `uc`,\n`gb`, or `rs`; default\
    \ is `uc`"
  type: string?
  inputBinding:
    prefix: --id_from
- id: in_id_to
  doc: "seq-id format in the output file; can be `ens`, `uc`,\n`gb`, or `rs`; default\
    \ is `rs`"
  type: File?
  inputBinding:
    prefix: --id_to
- id: in_keep_unmapped
  doc: keep lines that don't have seq-id matches
  type: boolean?
  inputBinding:
    prefix: --keep_unmapped
- id: in_primary
  doc: restrict to primary assembly only
  type: boolean?
  inputBinding:
    prefix: --primary
- id: in_format
  doc: "input file format; can be `gff3`, `gtf`, `bedgraph`,\n`bed`, `sam`, `vcf`,\
    \ `wig` or `tsv`; default is `gff3`"
  type: string?
  inputBinding:
    prefix: --format
- id: in_column
  doc: "column where the seq-id is located; required for `tsv`\nformat\n"
  type: string?
  inputBinding:
    prefix: --column
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_id_to
  doc: "seq-id format in the output file; can be `ens`, `uc`,\n`gb`, or `rs`; default\
    \ is `rs`"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_to)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cthreepo:0.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cthreepo
