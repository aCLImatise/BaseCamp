class: CommandLineTool
id: megalodon_extras_modified_bases_create_motif_bed.cwl
inputs:
- id: in_motif
  doc: "['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\nMotif description. Motifs include\
    \ two values\nspecifying the sequence motif (may include ambiguity\ncodes) and\
    \ the relative modified position. Multiple\n`--motif` values may be provided."
  type: boolean?
  inputBinding:
    prefix: --motif
- id: in_out_filename
  doc: "Output BED filename. Default: motif_sites.bed\n"
  type: File?
  inputBinding:
    prefix: --out-filename
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "Output BED filename. Default: motif_sites.bed\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- create_motif_bed
