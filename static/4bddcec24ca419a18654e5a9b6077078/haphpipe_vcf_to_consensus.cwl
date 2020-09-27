class: CommandLineTool
id: haphpipe_vcf_to_consensus.cwl
inputs:
- id: in_vcf
  doc: VCF file (created with all sites).
  type: File
  inputBinding:
    prefix: --vcf
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_samp_idx
  doc: 'Index for sample if multi-sample VCF (default: 0)'
  type: long
  inputBinding:
    prefix: --sampidx
- id: in_min_dp
  doc: 'Minimum depth to call site (default: 5)'
  type: long
  inputBinding:
    prefix: --min_dp
- id: in_major
  doc: 'Allele fraction to make unambiguous call (default: 0.5)'
  type: double
  inputBinding:
    prefix: --major
- id: in_minor
  doc: 'Allele fraction to make ambiguous call (default: 0.2)'
  type: double
  inputBinding:
    prefix: --minor
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
- vcf_to_consensus
