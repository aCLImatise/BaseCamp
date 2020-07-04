class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sambamba_mpileup.cwl
inputs:
- id: regions
  doc: provide BED file with regions (no need to duplicate it in samtools args); all
    input files must be indexed
  type: File
  inputBinding:
    prefix: --regions
- id: output_filename
  doc: specify output filename
  type: string
  inputBinding:
    prefix: --output-filename
- id: tmpdir
  doc: directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: n_threads
  doc: maximum number of threads to use
  type: string
  inputBinding:
    prefix: --nthreads
- id: buffer_size
  doc: chunk size (in bytes)
  type: string
  inputBinding:
    prefix: --buffer-size
- id: output_buffer_size
  doc: output buffer size (in bytes)
  type: string
  inputBinding:
    prefix: --output-buffer-size
- id: samba_mba_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- mpileup
