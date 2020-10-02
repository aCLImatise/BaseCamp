class: CommandLineTool
id: RNAcode.cwl
inputs:
- id: in_outfile
  doc: '-o  Output file  (default: stdout)'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_gtf
  doc: -g  Format output as GTF
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_tabular
  doc: -t  Format output as tab delimited fields
  type: boolean
  inputBinding:
    prefix: --tabular
- id: in_best_only
  doc: -b  Show only best hit
  type: boolean
  inputBinding:
    prefix: --best-only
- id: in_best_region
  doc: Show only best non-overlapping hits
  type: boolean
  inputBinding:
    prefix: --best-region
- id: in_stop_early
  doc: Don't calculate p-values for hits likely to be above cutoff
  type: boolean
  inputBinding:
    prefix: --stop-early
- id: in_num_samples
  doc: 'Number of samples to calculate p-value (default: 100)'
  type: boolean
  inputBinding:
    prefix: --num-samples
- id: in_cut_off
  doc: '-p  p-value cutoff (default: 1.0)'
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: in_pars
  doc: -c  Parameters as comma separated string (see README for details)
  type: boolean
  inputBinding:
    prefix: --pars
- id: in_eps
  doc: -e  Create colored plots in EPS format
  type: boolean
  inputBinding:
    prefix: --eps
- id: in_eps_cut_off
  doc: 'Create plots only if p better than this cutoff (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --eps-cutoff
- id: in_eps_dir
  doc: '-d  Directory to put eps-files (default: eps)'
  type: boolean
  inputBinding:
    prefix: --eps-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: '-o  Output file  (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- RNAcode
