class: CommandLineTool
id: haphpipe_finalize_assembly.cwl
inputs:
- id: in_ref_fa
  doc: '[--outdir OUTDIR]'
  type: string?
  inputBinding:
    prefix: --ref_fa
- id: in_fq_one
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_f_qu
  doc: Fastq file with unpaired reads
  type: File?
  inputBinding:
    prefix: --fqU
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_bt_two_preset
  doc: 'Bowtie2 preset to use (default: very-sensitive)'
  type: string?
  inputBinding:
    prefix: --bt2_preset
- id: in_sample_id
  doc: 'Sample ID (default: sampleXX)'
  type: string?
  inputBinding:
    prefix: --sample_id
- id: in_n_cpu
  doc: Number of CPU to use
  type: long?
  inputBinding:
    prefix: --ncpu
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
- finalize_assembly
