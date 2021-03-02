class: CommandLineTool
id: trim.cwl
inputs:
- id: in_fastq_file_reads
  doc: Fastq file of reads
  type: File?
  inputBinding:
    prefix: -r
- id: in_file_containing_names
  doc: "File containing fastq file names, one per line or\ntwo per line for paired\
    \ end reads."
  type: File?
  inputBinding:
    prefix: -f
- id: in_use_num_openmp
  doc: Use <num> openMP threads
  type: long?
  inputBinding:
    prefix: -p
- id: in_return_only_reads
  doc: "=30\nReturn only reads corrected and/or trimmed to >= <num>\nbp"
  type: long?
  inputBinding:
    prefix: -l
- id: in_quality_value_ascii
  doc: "Quality value ascii scale, generally 64 or 33. If not\nspecified, it will\
    \ guess."
  type: long?
  inputBinding:
    prefix: -q
- id: in_use_bwa_trim
  doc: "=3\nUse BWA trim parameter <num>\n"
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- trim
