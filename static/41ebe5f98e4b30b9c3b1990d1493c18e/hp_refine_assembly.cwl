class: CommandLineTool
id: hp_refine_assembly.cwl
inputs:
- id: fq1
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq1
- id: fq2
  doc: Fastq file with read 2
  type: string
  inputBinding:
    prefix: --fq2
- id: f_qu
  doc: Fastq file with unpaired reads
  type: string
  inputBinding:
    prefix: --fqU
- id: ref_fa
  doc: Assembly to refine
  type: string
  inputBinding:
    prefix: --ref_fa
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: max_step
  doc: 'Maximum number of refinement steps (default: 1)'
  type: long
  inputBinding:
    prefix: --max_step
- id: subsample
  doc: Use a subsample of reads for refinement.
  type: string
  inputBinding:
    prefix: --subsample
- id: seed
  doc: Seed for random number generator (ignored if not subsampling).
  type: string
  inputBinding:
    prefix: --seed
- id: sample_id
  doc: 'Sample ID. Used as read group ID in BAM (default: sampleXX)'
  type: string
  inputBinding:
    prefix: --sample_id
- id: n_cpu
  doc: 'Number of CPUs to use (default: 1)'
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
- hp_refine_assembly
