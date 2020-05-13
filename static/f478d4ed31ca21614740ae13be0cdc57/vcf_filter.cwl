class: CommandLineTool
id: vcf_filter.py.cwl
inputs:
- id: input
  doc: 'File to process (use - for STDIN) (default: None)'
  type: string
  inputBinding:
    position: 0
- id: no_short_circuit
  doc: 'Do not stop filter processing on a site if any filter is triggered (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --no-short-circuit
- id: output
  doc: "Filename to output [STDOUT] (default: <_io.TextIOWrapper name='<stdout>' mode='w'\
    \ encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output
- id: no_filtered
  doc: 'Output only sites passing the filters (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-filtered
- id: local_script
  doc: 'Python file in current working directory with the filter classes (default:
    None)'
  type: string
  inputBinding:
    prefix: --local-script
- id: avg_depth_per_sample
  doc: 'Minimum required average coverage per sample (default: 3)'
  type: string
  inputBinding:
    prefix: --avg-depth-per-sample
- id: depth_per_sample
  doc: 'Minimum required coverage in each sample (default: 5)'
  type: string
  inputBinding:
    prefix: --depth-per-sample
- id: e_blr
  doc: 'Filter sites above this error log odds ratio (default: -10)'
  type: string
  inputBinding:
    prefix: --eblr
- id: site_quality
  doc: 'Filter sites below this quality (default: 30)'
  type: string
  inputBinding:
    prefix: --site-quality
- id: genotype_quality
  doc: 'Filter sites with no genotypes above this quality (default: 50)'
  type: string
  inputBinding:
    prefix: --genotype-quality
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_filter.py
