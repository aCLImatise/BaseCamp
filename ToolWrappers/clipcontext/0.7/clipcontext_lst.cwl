class: CommandLineTool
id: clipcontext_lst.cwl
inputs:
- id: in_min_len
  doc: "Accept only transcripts with length >= --min-len (default:\nFalse)"
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_strict
  doc: "Accept only transcripts with transcript support level (TSL)\n1-5 (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_add_infos
  doc: "Add additional information columns (gene ID, TSL, length) to\noutput file\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-infos
- id: in_gtf
  doc: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz) (NOTE:\ntested with\
    \ Ensembl GTF files, expects transcript support\nlevel (TSL) information)"
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_out
  doc: Output transcript IDs list file
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output transcript IDs list file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/clipcontext:0.7--py_0
cwlVersion: v1.1
baseCommand:
- clipcontext
- lst
