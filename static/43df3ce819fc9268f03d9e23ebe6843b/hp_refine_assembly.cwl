class: CommandLineTool
id: hp_refine_assembly.cwl
inputs:
- id: in_fq_one
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 2
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_f_qu
  doc: Fastq file with unpaired reads
  type: File?
  inputBinding:
    prefix: --fqU
- id: in_ref_fa
  doc: Assembly to refine
  type: string?
  inputBinding:
    prefix: --ref_fa
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_max_step
  doc: 'Maximum number of refinement steps (default: 1)'
  type: long?
  inputBinding:
    prefix: --max_step
- id: in_subsample
  doc: Use a subsample of reads for refinement.
  type: string?
  inputBinding:
    prefix: --subsample
- id: in_seed
  doc: "Seed for random number generator (ignored if not\nsubsampling)."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_sample_id
  doc: "Sample ID. Used as read group ID in BAM (default:\nsampleXX)"
  type: string?
  inputBinding:
    prefix: --sample_id
- id: in_n_cpu
  doc: 'Number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --ncpu
- id: in_x_mx
  doc: 'Maximum heap size for Java VM, in GB. (default: 32)'
  type: long?
  inputBinding:
    prefix: --xmx
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
- hp_refine_assembly
