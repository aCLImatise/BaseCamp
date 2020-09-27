class: CommandLineTool
id: rtg_sdf2fasta.cwl
inputs:
- id: in_input
  doc: SDF containing sequences
  type: string
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output filename (extension added if not present). Use\n'-' to write to standard\
    \ output"
  type: File
  inputBinding:
    prefix: --output
- id: in_end_id
  doc: exclusive upper bound on sequence id
  type: long
  inputBinding:
    prefix: --end-id
- id: in_id_file
  doc: file containing sequence ids, or sequence names if
  type: File
  inputBinding:
    prefix: --id-file
- id: in_taxons
  doc: "interpret supplied sequence as taxon ids instead of\nnumeric sequence ids"
  type: boolean
  inputBinding:
    prefix: --taxons
- id: in_interleave
  doc: "interleave paired data into a single output file.\nDefault is to split to\
    \ separate output files"
  type: File
  inputBinding:
    prefix: --interleave
- id: in_line_length
  doc: "maximum number of nucleotides to print on a line of\noutput. A value of 0\
    \ indicates no limit (Default is 0)"
  type: long
  inputBinding:
    prefix: --line-length
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: in_ids
  doc: --start-id=INT    inclusive lower bound on sequence id
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output filename (extension added if not present). Use\n'-' to write to standard\
    \ output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_interleave
  doc: "interleave paired data into a single output file.\nDefault is to split to\
    \ separate output files"
  type: File
  outputBinding:
    glob: $(inputs.in_interleave)
cwlVersion: v1.1
baseCommand:
- rtg
- sdf2fasta
