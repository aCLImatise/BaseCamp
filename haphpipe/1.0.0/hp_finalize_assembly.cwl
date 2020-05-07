class: CommandLineTool
id: hp_finalize_assembly.cwl
inputs:
- id: fq1
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq1
- id: fq2
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq2
- id: f_qu
  doc: Fastq file with unpaired reads
  type: string
  inputBinding:
    prefix: --fqU
- id: ref_fa
  doc: Consensus fasta file
  type: string
  inputBinding:
    prefix: --ref_fa
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: bt2_preset
  doc: 'Bowtie2 preset to use (default: very-sensitive)'
  type: string
  inputBinding:
    prefix: --bt2_preset
- id: sample_id
  doc: 'Sample ID (default: sampleXX)'
  type: string
  inputBinding:
    prefix: --sample_id
- id: n_cpu
  doc: Number of CPU to use
  type: string
  inputBinding:
    prefix: --ncpu
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
- hp_finalize_assembly
