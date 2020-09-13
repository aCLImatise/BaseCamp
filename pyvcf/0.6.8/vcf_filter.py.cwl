class: CommandLineTool
id: ../../../vcf_filter.py.cwl
inputs:
- id: in_no_short_circuit
  doc: "Do not stop filter processing on a site if any filter\nis triggered (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --no-short-circuit
- id: in_output
  doc: "Filename to output [STDOUT] (default:\n<_io.TextIOWrapper name='<stdout>'\
    \ mode='w'\nencoding='ANSI_X3.4-1968'>)"
  type: File
  inputBinding:
    prefix: --output
- id: in_no_filtered
  doc: 'Output only sites passing the filters (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-filtered
- id: in_local_script
  doc: "Python file in current working directory with the\nfilter classes (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --local-script
- id: in_avg_depth_per_sample
  doc: "Minimum required average coverage per sample (default:\n3)"
  type: long
  inputBinding:
    prefix: --avg-depth-per-sample
- id: in_depth_per_sample
  doc: 'Minimum required coverage in each sample (default: 5)'
  type: long
  inputBinding:
    prefix: --depth-per-sample
- id: in_e_blr
  doc: 'Filter sites above this error log odds ratio (default:'
  type: string
  inputBinding:
    prefix: --eblr
- id: in_one_zero
  doc: )
  type: boolean
  inputBinding:
    prefix: '-10'
- id: in_site_quality
  doc: 'Filter sites below this quality (default: 30)'
  type: long
  inputBinding:
    prefix: --site-quality
- id: in_genotype_quality
  doc: "Filter sites with no genotypes above this quality\n(default: 50)\n"
  type: long
  inputBinding:
    prefix: --genotype-quality
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Filename to output [STDOUT] (default:\n<_io.TextIOWrapper name='<stdout>'\
    \ mode='w'\nencoding='ANSI_X3.4-1968'>)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- vcf_filter.py
