class: CommandLineTool
id: haystac_analyse.cwl
inputs:
- id: in_mode
  doc: "Analysis mode for the selected sample [filter, align,\nlikelihoods, probabilities,\
    \ abundances, reads,\nmapdamage]"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_database
  doc: Path to the database output directory
  type: File?
  inputBinding:
    prefix: --database
- id: in_sample
  doc: Path to the sample output directory
  type: File?
  inputBinding:
    prefix: --sample
- id: in_output
  doc: Path to the analysis output directory
  type: File?
  inputBinding:
    prefix: --output
- id: in_genera
  doc: "[<genus> ...]\nList of genera to restrict the abundance calculations\n(default:\
    \ [])"
  type: string?
  inputBinding:
    prefix: --genera
- id: in_min_prob
  doc: "Minimum posterior probability to assign an aligned\nread to a given species\
    \ (default: 0.75)"
  type: double?
  inputBinding:
    prefix: --min-prob
- id: in_mismatch_probability
  doc: 'Base mismatch probability (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --mismatch-probability
- id: in_cores
  doc: 'Maximum number of CPU cores to use (default: 8)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_mem
  doc: 'Maximum memory (MB) to use (default: 16012)'
  type: long?
  inputBinding:
    prefix: --mem
- id: in_unlock
  doc: "Unlock the output directory following a crash or hard\nrestart (default: False)"
  type: Directory?
  inputBinding:
    prefix: --unlock
- id: in_debug
  doc: 'Enable debugging mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_snake_make
  doc: "'<json>'  Pass additional flags to the `snakemake` scheduler."
  type: boolean?
  inputBinding:
    prefix: --snakemake
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_database
  doc: Path to the database output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_database)
- id: out_sample
  doc: Path to the sample output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_sample)
- id: out_output
  doc: Path to the analysis output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_unlock
  doc: "Unlock the output directory following a crash or hard\nrestart (default: False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_unlock)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haystac:0.3.2--py36_0
cwlVersion: v1.1
baseCommand:
- haystac
- analyse
