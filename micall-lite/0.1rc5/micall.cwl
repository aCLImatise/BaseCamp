class: CommandLineTool
id: ../../../micall.cwl
inputs:
- id: in_batch
  doc: "<optional> Path to directory with FASTQ files forbatch\nprocessing."
  type: File
  inputBinding:
    prefix: --batch
- id: in_outdir
  doc: <optional> Path to write output files.
  type: File
  inputBinding:
    prefix: --outdir
- id: in_unzipped
  doc: Set if the FASTQ file is not compressed.
  type: boolean
  inputBinding:
    prefix: --unzipped
- id: in_keep
  doc: <optional> if set, all temporary files are retained.
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_interop
  doc: <optional> Path to ErrorMetricsOut.bin interop file.
  type: File
  inputBinding:
    prefix: --interop
- id: in_read_len
  doc: '<optional> Read length (default: 251nt).'
  type: long
  inputBinding:
    prefix: --readlen
- id: in_index
  doc: '<optional> Index length (default: 8nt).'
  type: long
  inputBinding:
    prefix: --index
- id: in_bt_two
  doc: <optional> Path to bowtie2 script.
  type: long
  inputBinding:
    prefix: --bt2
- id: in_bt_two_build
  doc: <optional> Path to bowtie2-build script.
  type: long
  inputBinding:
    prefix: --bt2build
- id: in_threads
  doc: Number of threads for bowtie2 (default 4)
  type: long
  inputBinding:
    prefix: --threads
- id: in_projects
  doc: "<optional> Specify a custom projects JSON file.\n"
  type: File
  inputBinding:
    prefix: --projects
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: <optional> Path to write output files.
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- micall
