class: CommandLineTool
id: hp_call_variants.cwl
inputs:
- id: aln_bam
  doc: Alignment file.
  type: string
  inputBinding:
    prefix: --aln_bam
- id: ref_fa
  doc: Reference fasta file.
  type: string
  inputBinding:
    prefix: --ref_fa
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: emit_all
  doc: 'Output calls for all sites. (default: False)'
  type: boolean
  inputBinding:
    prefix: --emit_all
- id: min_base_qual
  doc: 'Minimum base quality required to consider a base for calling. (default: 15)'
  type: long
  inputBinding:
    prefix: --min_base_qual
- id: n_cpu
  doc: Number of CPU to use
  type: string
  inputBinding:
    prefix: --ncpu
- id: x_mx
  doc: 'Maximum heap size for Java VM, in GB. (default: 32)'
  type: string
  inputBinding:
    prefix: --xmx
- id: keep_tmp
  doc: 'Do not delete temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_call_variants
