class: CommandLineTool
id: haphpipe_call_variants.cwl
inputs:
- id: in_aln_bam
  doc: Alignment file.
  type: File
  inputBinding:
    prefix: --aln_bam
- id: in_ref_fa
  doc: Reference fasta file.
  type: File
  inputBinding:
    prefix: --ref_fa
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_emit_all
  doc: 'Output calls for all sites. (default: False)'
  type: boolean
  inputBinding:
    prefix: --emit_all
- id: in_min_base_qual
  doc: "Minimum base quality required to consider a base for\ncalling. (default: 15)"
  type: long
  inputBinding:
    prefix: --min_base_qual
- id: in_n_cpu
  doc: Number of CPU to use
  type: long
  inputBinding:
    prefix: --ncpu
- id: in_x_mx
  doc: 'Maximum heap size for Java VM, in GB. (default: 32)'
  type: long
  inputBinding:
    prefix: --xmx
- id: in_keep_tmp
  doc: 'Do not delete temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- haphpipe
- call_variants
