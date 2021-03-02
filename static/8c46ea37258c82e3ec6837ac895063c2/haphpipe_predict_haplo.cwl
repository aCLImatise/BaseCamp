class: CommandLineTool
id: haphpipe_predict_haplo.cwl
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
- id: in_ref_fa
  doc: Reference sequence used to align reads (fasta)
  type: string?
  inputBinding:
    prefix: --ref_fa
- id: in_region_txt
  doc: "File with regions to perform haplotype reconstruction.\nRegions should be\
    \ specified using the samtools region\nspecification format: RNAME[:STARTPOS[-ENDPOS]]"
  type: File?
  inputBinding:
    prefix: --region_txt
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_min_read_length
  doc: "Minimum readlength passed to PredictHaplo (default:\n36)"
  type: long?
  inputBinding:
    prefix: --min_readlength
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
hints: []
cwlVersion: v1.1
baseCommand:
- haphpipe
- predict_haplo
