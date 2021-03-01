class: CommandLineTool
id: filterSqMass.py.cwl
inputs:
- id: in_in
  doc: An input file
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: An output file
  type: File?
  inputBinding:
    prefix: --out
- id: in_chrom_filter
  doc: Filter chromatograms by native id
  type: string?
  inputBinding:
    prefix: --chrom_filter
- id: in_tsv_filter
  doc: Filter chromatograms by TSV file
  type: File?
  inputBinding:
    prefix: --tsv_filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: An output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1
cwlVersion: v1.1
baseCommand:
- filterSqMass.py
