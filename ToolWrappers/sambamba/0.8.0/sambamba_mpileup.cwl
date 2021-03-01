class: CommandLineTool
id: sambamba_mpileup.cwl
inputs:
- id: in_regions
  doc: "provide BED file with regions\n(no need to duplicate it in samtools args);\n\
    all input files must be indexed"
  type: File?
  inputBinding:
    prefix: --regions
- id: in_output_filename
  doc: specify output filename
  type: File?
  inputBinding:
    prefix: --output-filename
- id: in_tmpdir
  doc: directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_n_threads
  doc: maximum number of threads to use
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_buffer_size
  doc: chunk size (in bytes)
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_output_buffer_size
  doc: output buffer size (in bytes)
  type: long?
  inputBinding:
    prefix: --output-buffer-size
- id: in_samba_mba_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: specify output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- mpileup
