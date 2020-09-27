class: CommandLineTool
id: juliet.cwl
inputs:
- id: in_config
  doc: Defines genes of interest within the reference for reporting purposes. Enter
    either 1) the predefined target config "HIV_HXB2" or a custom target config through
    either 2a) the path to the target config JSON file or 2b) the JSON string.
  type: boolean
  inputBinding:
    prefix: --config
- id: in_mode_phasing
  doc: Phase variants and cluster haplotypes.
  type: boolean
  inputBinding:
    prefix: --mode-phasing
- id: in_region
  doc: Clip reads to this genomic region. Empty means all reads.
  type: boolean
  inputBinding:
    prefix: --region
- id: in_drm_only
  doc: Only report variants that confer drug resistance, as listed in the target configuration
    file.
  type: boolean
  inputBinding:
    prefix: --drm-only
- id: in_min_perc
  doc: Report only variants whose percentage of the total population exceeds this
    value. Increasing it helps to remove PCR noise. [0.1]
  type: boolean
  inputBinding:
    prefix: --min-perc
- id: in_max_perc
  doc: Report only variants whose percentage of the total population is less than
    this value. Lowering it helps to phase low frequency variants when the highest-frequency
    variant is different from the reference. [100]
  type: boolean
  inputBinding:
    prefix: --max-perc
- id: in_sub
  doc: Substitution Rate, specify to override the learned rate. [0]
  type: boolean
  inputBinding:
    prefix: --sub
- id: in_del
  doc: Deletion Rate, specify to override the learned rate. [0]
  type: boolean
  inputBinding:
    prefix: --del
- id: in_verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug returns all amino acids, irrelevant of their significance.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_emit_tool_contract
  doc: Emit tool contract.
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: in_resolved_tool_contract
  doc: Use args from resolved tool contract.
  type: boolean
  inputBinding:
    prefix: --resolved-tool-contract
- id: in_source
  doc: Source BAM or DataSet XML file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- juliet
