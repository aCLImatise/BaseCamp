class: CommandLineTool
id: phyluce_align_reduce_alignments_with_raxml.cwl
inputs:
- id: in_output
  doc: "[--input-format {fasta,phylip,phylip-relaxed}]\n[--cores CORES]\n[--verbosity\
    \ {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH]"
  type: File
  inputBinding:
    prefix: --output
- id: in_alignments
  doc: Input folder of alignments
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: in_cores
  doc: The number of compute cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_reduce_alignments_with_raxml
