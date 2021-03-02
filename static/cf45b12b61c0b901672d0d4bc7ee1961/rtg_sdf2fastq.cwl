class: CommandLineTool
id: rtg_sdf2fastq.cwl
inputs:
- id: in_input
  doc: SDF containing sequences
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output filename (extension added if not present).\nUse '-' to write to standard\
    \ output"
  type: File?
  inputBinding:
    prefix: --output
- id: in_end_id
  doc: exclusive upper bound on sequence id
  type: long?
  inputBinding:
    prefix: --end-id
- id: in_id_file
  doc: file containing sequence ids, or sequence names if
  type: File?
  inputBinding:
    prefix: --id-file
- id: in_start_id
  doc: inclusive lower bound on sequence id
  type: long?
  inputBinding:
    prefix: --start-id
- id: in_names
  doc: is set. May be specified 0 or more
  type: long?
  inputBinding:
    prefix: --names
- id: in_default_quality
  doc: "default quality value to use if the SDF does not\ncontain quality data (0-63)"
  type: long?
  inputBinding:
    prefix: --default-quality
- id: in_interleave
  doc: "interleave paired data into a single output file.\nDefault is to split to\
    \ separate output files"
  type: File?
  inputBinding:
    prefix: --interleave
- id: in_line_length
  doc: "maximum number of nucleotides to print on a line of\noutput. A value of 0\
    \ indicates no limit (Default is\n0)"
  type: long?
  inputBinding:
    prefix: --line-length
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_times
  doc: Utility
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output filename (extension added if not present).\nUse '-' to write to standard\
    \ output"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_interleave
  doc: "interleave paired data into a single output file.\nDefault is to split to\
    \ separate output files"
  type: File?
  outputBinding:
    glob: $(inputs.in_interleave)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- sdf2fastq
