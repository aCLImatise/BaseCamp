class: CommandLineTool
id: hp_align_reads.cwl
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
  doc: Reference fasta file.
  type: string
  inputBinding:
    prefix: --ref_fa
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: bt2_preset
  doc: 'Bowtie2 preset (default: sensitive-local)'
  type: string
  inputBinding:
    prefix: --bt2_preset
- id: sample_id
  doc: 'Sample ID. Used as read group ID in BAM (default: sampleXX)'
  type: string
  inputBinding:
    prefix: --sample_id
- id: no_realign
  doc: 'Do not realign indels (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_realign
- id: remove_duplicates
  doc: 'Remove duplicates from final alignment. Otherwise duplicates are marked but
    not removed. (default: False)'
  type: boolean
  inputBinding:
    prefix: --remove_duplicates
- id: encoding
  doc: '{Phred+33,Phred+64} Quality score encoding'
  type: boolean
  inputBinding:
    prefix: --encoding
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
- hp_align_reads
