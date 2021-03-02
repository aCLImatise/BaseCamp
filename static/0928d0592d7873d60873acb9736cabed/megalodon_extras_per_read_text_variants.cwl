class: CommandLineTool
id: megalodon_extras_per_read_text_variants.cwl
inputs:
- id: in_out_filename
  doc: "Output filename for text summary. Default: output into\nmegalodon results\
    \ directory\n"
  type: File?
  inputBinding:
    prefix: --out-filename
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "Output filename for text summary. Default: output into\nmegalodon results\
    \ directory\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- per_read_text
- variants
