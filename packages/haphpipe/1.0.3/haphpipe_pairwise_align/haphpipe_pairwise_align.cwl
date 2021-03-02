class: CommandLineTool
id: haphpipe_pairwise_align.cwl
inputs:
- id: in_amplicons_fa
  doc: Assembled amplicons (fasta)
  type: string?
  inputBinding:
    prefix: --amplicons_fa
- id: in_ref_fa
  doc: Reference fasta file
  type: File?
  inputBinding:
    prefix: --ref_fa
- id: in_ref_gtf
  doc: "GTF format file containing amplicon regions. Primary\nand alternate coding\
    \ regions should be provided in the\nattribute field (for amino acid alignment)."
  type: File?
  inputBinding:
    prefix: --ref_gtf
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_keep_tmp
  doc: 'Do not delete temporary directory (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haphpipe:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- haphpipe
- pairwise_align
