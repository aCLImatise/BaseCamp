class: CommandLineTool
id: megalodon_extras_modified_bases_split_by_motif.cwl
inputs:
- id: in_motif
  doc: "['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\nMotif description. Motifs include\
    \ two values\nspecifying the sequence motif (may include ambiguity\ncodes) and\
    \ the relative modified position. Multiple\n`--motif` values may be provided."
  type: boolean?
  inputBinding:
    prefix: --motif
- id: in_megalodon_directory
  doc: "Megalodon output directory containing per-read\nmodified base database to\
    \ be split. Default:\nmegalodon_results"
  type: Directory?
  inputBinding:
    prefix: --megalodon-directory
- id: in_output_suffix
  doc: "Suffix to apply to log (stored in input directory).\nDefault: split_by_motif"
  type: Directory?
  inputBinding:
    prefix: --output-suffix
- id: in_output_prefix
  doc: "Prefix for output directories. One directory will be\ncreated for each motif\
    \ with names [--output-\nprefix].[--motif]. Default:\nmegalodon_results.split_by_motif\n"
  type: Directory?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_megalodon_directory
  doc: "Megalodon output directory containing per-read\nmodified base database to\
    \ be split. Default:\nmegalodon_results"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_megalodon_directory)
- id: out_output_prefix
  doc: "Prefix for output directories. One directory will be\ncreated for each motif\
    \ with names [--output-\nprefix].[--motif]. Default:\nmegalodon_results.split_by_motif\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- split_by_motif
