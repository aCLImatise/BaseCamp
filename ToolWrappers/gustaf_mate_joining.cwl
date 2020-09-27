class: CommandLineTool
id: gustaf_mate_joining.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_out_path
  doc: "of OUTPUT_FILE's\nSet name of output FASTA/FASTQ file(s). Valid filetypes\
    \ are: .fq,\n.fastq, .fasta, and .fa. Default: joined_mates.fa."
  type: File
  inputBinding:
    prefix: --outPath
- id: in_rev_compl
  doc: Disable reverse complementing second input file.
  type: boolean
  inputBinding:
    prefix: --revcompl
- id: in_quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_path
  doc: "of OUTPUT_FILE's\nSet name of output FASTA/FASTQ file(s). Valid filetypes\
    \ are: .fq,\n.fastq, .fasta, and .fa. Default: joined_mates.fa."
  type: File
  outputBinding:
    glob: $(inputs.in_out_path)
cwlVersion: v1.1
baseCommand:
- gustaf_mate_joining
