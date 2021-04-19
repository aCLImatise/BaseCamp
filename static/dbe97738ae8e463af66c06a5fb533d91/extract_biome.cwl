class: CommandLineTool
id: extract_biome.cwl
inputs:
- id: in_in
  doc: '[string]                    Input MEGAN comparison file (.megan file). Mandatory
    option.'
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_out
  doc: '[string]                   Output file. Default value: biome.megan'
  type: File?
  inputBinding:
    prefix: --out
- id: in_biome
  doc: '[string]                 Biome type to compute. Default value: total Legal
    values: total, core, rare'
  type: boolean?
  inputBinding:
    prefix: --biome
- id: in_samples
  doc: "[string(s)]            Samples to use or 'ALL'. Default value(s): 'ALL'."
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_sample_threshold_percent
  doc: '[number]   Min or max percent of samples that class must be present in to
    be included in core or rare biome, resp.. Default value: 50.0.'
  type: boolean?
  inputBinding:
    prefix: --sampleThresholdPercent
- id: in_class_threshold_percent
  doc: '[number]   Min percent of sample that reads assigned to class must achieve
    for class to be considered present in sample. Default value: 0.1.'
  type: boolean?
  inputBinding:
    prefix: --classThresholdPercent
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '[string]                   Output file. Default value: biome.megan'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- extract-biome
