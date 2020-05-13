class: CommandLineTool
id: hp_predict_haplo.cwl
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
- id: ref_fa
  doc: Reference sequence used to align reads (fasta)
  type: string
  inputBinding:
    prefix: --ref_fa
- id: region_txt
  doc: 'File with regions to perform haplotype reconstruction. Regions should be specified
    using the samtools region specification format: RNAME[:STARTPOS[-ENDPOS]]'
  type: string
  inputBinding:
    prefix: --region_txt
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: min_read_length
  doc: 'Minimum readlength passed to PredictHaplo (default: 36)'
  type: long
  inputBinding:
    prefix: --min_readlength
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
- hp_predict_haplo
