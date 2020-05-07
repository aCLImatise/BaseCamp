class: CommandLineTool
id: hp_assemble_denovo.cwl
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
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: no_error_correction
  doc: 'Do not perform error correction [spades only] (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_error_correction
- id: subsample
  doc: Use a subsample of reads for assembly.
  type: string
  inputBinding:
    prefix: --subsample
- id: seed
  doc: Seed for random number generator (ignored if not subsampling).
  type: string
  inputBinding:
    prefix: --seed
- id: n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
- id: keep_tmp
  doc: 'Keep temporary directory (default: False)'
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
- hp_assemble_denovo
